# frozen_string_literal: true

require 'transaction'

describe Transaction do
  describe '#add_details' do
    it 'adds details of transaction' do
      subject.add_details(1.00, 0.00, 'deposit')
      expect(subject.type).to eq 'deposit'
    end
  end

  describe '#date' do
    it 'shows the date of the transaction' do
      expect(subject.date).to eq Time.now.strftime('%d/%m/%Y')
    end
  end

  describe '#calculate_balance' do
    it 'calculates balance after deposit occurs' do
      subject.add_details(1.00, 0.00, 'deposit')
      expect(subject.calculate_balance).to eq 1.00
    end

    it 'calculates balance after withdrawal occurs' do
      subject.add_details(1.00, 2.00, 'withdrawal')
      expect(subject.calculate_balance).to eq 1.00
    end
  end
end
