require 'transaction'

describe Transaction do

  subject { Transaction.new(value: 1000) }

  describe '#initialization' do
    it 'initializes with a sum value' do
      expect(subject.value).to eq 1000
    end
  end

  # describe '#date' do
  #   it 'shows the date of the transaction' do
  #     expect(subject.date).to eq "14/01/2012"
  #   end
  # end
  
end
