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
    it 'descreases the account\'s balance by the value passsed as an argument' do
      expect{ subject.withdrawal 1.00 }.to change{ subject.balance }.by -1.00
    end
  end

end
