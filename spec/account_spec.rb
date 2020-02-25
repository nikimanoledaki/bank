# frozen_string_literal: true

require 'account'

describe Account do
  describe '#statement' do
    it 'prints formatted transaction history' do
      subject.deposit(1)
      expect do
        subject.statement
      end.to output("date || credit || debit || balance\n25/02/2020 || 1.00 || || 2.00\n").to_stdout
    end
  end

  describe '#deposit' do
    it 'raises an error if the value is not a numeric value' do
      expect { subject.deposit 'one' }.to raise_error 'Must be a number'
    end
  end

  describe '#withdrawal' do
    before(:each) { subject.deposit(10) }

    it 'raises error when withdrawing with insufficient balance' do
      expect { subject.withdrawal 11.00 }.to raise_error 'Insufficient credit'
    end
  end

  describe '#transaction' do
    it 'creates new transaction instance' do
      transaction = instance_double('Transaction')
      expect(transaction).to receive(:add_details).with(1, 0, 'deposit')
      expect(transaction).to receive(:calculate_balance).and_return(1)
      expect(transaction).to receive(:show_details).and_return('details')
      subject.transaction(1, 'deposit', transaction)
      expect(subject.balance).to eq 1
    end
  end
end
