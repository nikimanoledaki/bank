require 'account'

describe Account do

  describe '#show_balance' do
    it 'shows balance as a float' do
      expect(subject.balance).to be_a(Numeric)
    end

    it 'shows balance as a float with two decimal places' do
      expect(subject.show_balance).to eq "0.00"
    end
  end

  describe '#deposit' do
    it 'increases the account\'s balance by the value passsed as an argument' do
      expect{ subject.deposit 1.00 }.to change{ subject.balance }.by 1.00
    end

    it 'accepts values that are integers' do
      subject.deposit(1)
      expect(subject.show_balance).to eq "1.00"
    end

    it 'raises an error if the value is not a numeric value' do
      expect{ subject.deposit "one" }.to raise_error "Error: Value must be a number"
    end
  end

  describe '#withdrawal' do
    before(:each) { subject.deposit(10) }

    it 'descreases the account\'s balance by the value passsed as an argument' do
      expect{ subject.withdrawal 1.00 }.to change{ subject.balance }.by -1.00
    end

    it 'accepts values that are integers' do
      subject.withdrawal(1)
      expect(subject.show_balance).to eq "9.00"
    end

    it 'raises an error if the value is not a numeric value' do
      expect{ subject.withdrawal "one" }.to raise_error "Error: Value must be a number"
    end

    it 'raises an error when withdrawing with a balance less or equal to one' do
      expect{ subject.withdrawal 11.00 }.to raise_error "Error: Not enough credit"
    end
  end

end
