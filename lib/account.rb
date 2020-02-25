# frozen_string_literal: true

require_relative 'transaction'

class Account
  attr_reader :balance

  def initialize(balance = 0, transaction = Transaction)
    @balance = balance
    @transaction = transaction
  end

  def show_balance
    format('%<balance>.2f', balance: @balance)
  end

  def deposit(value)
    transaction(value, 'deposit')
  end

  def withdrawal(value)
    transaction(value, 'withdrawal')
  end

  def transaction(value, type)
    transaction_conditions(value, type)
    new_transaction = @transaction.new(value, @balance, type)
    @balance = new_transaction.calculate_balance
  end

  def transaction_conditions(value, type)
    raise 'Must be a number' if not_number(value)
    return unless type == 'withdrawal' && exceeds_balance?(value)

    raise 'Not enough credit'
  end

  private

  def not_number(value)
    value.is_a?(Numeric) == false
  end

  def exceeds_balance?(value)
    (@balance - value) <= 0
  end
end
