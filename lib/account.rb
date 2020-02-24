require_relative 'transaction'

class Account
  attr_reader :balance

  def initialize(balance = 0, transaction = Transaction)
    @balance = balance
    @transaction = transaction
  end
  
  def show_balance
    "%.2f" % @balance
  end

  def deposit(value)
    fail "Error: Value must be a number" if not_number(value)
    @transaction.new(value: value)
    @balance += value
  end

  def withdrawal(value)
    fail "Error: Value must be a number" if not_number(value)
    @transaction.new(value: value)
    @balance -= value
  end

  def not_number(value)
    value.is_a?(Numeric) == false 
  end
   
end
