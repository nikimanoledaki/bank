# frozen_string_literal: true

require 'account'

describe Account do
  describe '#show_balance' do
    it 'prints integer values as floats with two decimals' do
      subject.deposit(1)
      expect(subject.show_balance).to eq '1.00'
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

    it 'decreases account\'s balance by the value passsed as argument' do
      expect { subject.withdrawal 1.00 }.to change { subject.balance }.by(-1.00)
    end
  end

  describe '#transaction' do
    it 'creates new transaction instance' do
      transaction = instance_double('Transaction')
      expect(transaction).to receive(:add_details).with(1, 0, 'deposit')
      expect(transaction).to receive(:calculate_balance).and_return(1)
      subject.transaction(1, 'deposit', transaction)
      expect(subject.show_balance).to eq '1.00'
    end
  end
end
