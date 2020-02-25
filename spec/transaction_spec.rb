# frozen_string_literal: true

require 'transaction'

describe Transaction do
  let(:subject) do
    value = 1.00
    deposit = 0.00
    type = 'deposit'
    Transaction.new(value, deposit, type)
  end

  describe '#initialization' do
    it 'initializes with a sum value' do
      expect(subject.value).to eq 1.00
    end

    it 'initializes with the balance before the transaction happens' do
      expect(subject.balance).to eq 0
    end

    it 'initializes with type - either deposit or withdrawal' do
      expect(subject.type).to eq 'deposit'
    end
  end

  describe '#date' do
    it 'shows the date of the transaction' do
      expect(subject.date).to eq Time.now.strftime('%d/%m/%Y')
    end
  end

  describe '#calculate_balance' do
    it 'calculates balance after transaction occurs' do
      expect(subject.calculate_balance).to eq 1.00
    end
  end
end
