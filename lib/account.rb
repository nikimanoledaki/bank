class Account
  attr_reader :balance

  def initialize
    @balance = 0.00
  end
  
  def showBalance
    '%.2f' % @balance
  end

  def deposit(value)
    fail "Error: Value must be a number" if not_number(value)
    @balance += value
  end

  def not_number(value)
    value.is_a?(Float) == false
  end
end
