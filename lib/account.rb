class Account
  attr_reader :balance

  def initialize(balance = 0)
    @balance = balance
  end
  
  def show_balance
    "%.2f" % @balance
  end

  def deposit(value)
    fail "Error: Value must be a number" if not_number(value)
    @balance += value
  end

  def withdrawal(value)
    @balance -= value
  end

  def not_number(value)
    value.is_a?(Numeric) == false 
  end
   
end
