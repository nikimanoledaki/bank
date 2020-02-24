require 'transaction'

describe Transaction do

  subject { Transaction.new(value: 1000, balance: 0) }

  describe '#initialization' do
    it 'initializes with a sum value' do
      expect(subject.value).to eq 1000
    end

    it 'initializes with the balance before the transaction happens' do
      expect(subject.balance).to eq 0
    end
  end

  describe '#date' do
    it 'shows the date of the transaction' do
      expect(subject.date).to eq Time.now.strftime("%d/%m/%Y")
    end
  end

  describe '#calculate_balance' do
    it 'calculates transaction value from balance' do
      expect(subject.calculate_balance).to eq 1000
    end
  end
  
end
