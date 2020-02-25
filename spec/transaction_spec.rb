# frozen_string_literal: true

require 'transaction'

describe Transaction do
  describe '#add_details' do
    it 'adds details of transaction' do
      value = 1.00
      balance = 0.00
      type = 'deposit'
      subject.add_details(value, balance, type)
      expect(subject.show_details).to be_a(Hash)
    end
  end

  describe '#date' do
    it 'shows the date of the transaction' do
      expect(subject.date).to eq Time.now.strftime('%d/%m/%Y')
    end
  end

  describe '#calculate_balance' do
    it 'calculates balance after transaction occurs' do
      value = 1.00
      balance = 0.00
      type = 'deposit'
      subject.add_details(value, balance, type)
      expect(subject.calculate_balance).to eq 1.00
    end
  end
end
