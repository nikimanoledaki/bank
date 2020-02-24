require 'account'

describe Account do

  describe '#showBalance' do
    it 'shows balance as a float' do
      expect(subject.balance).to be_a(Float)
    end

    it 'shows balance as a float with two decimal places' do
      balance = subject.showBalance
      expect(balance.to_s).to eq "0.00"
    end
  end

  describe '#deposit' do
    it 'increases the account\'s balance by the value passsed as an argument' do
      expect{ subject.deposit 1.00 }.to change{ subject.balance }.by 1.00
    end

  end

end
