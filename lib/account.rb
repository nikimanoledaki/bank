class Account
  attr_reader :balance
  
  def initialize
    @balance = 0.00
  end
  
  def showBalance
    '%.2f' % @balance
  end

  def deposit(value)
    @balance += value
  end
end
