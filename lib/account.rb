# frozen_string_literal: true

require_relative 'transaction'
require_relative 'printer'
require_relative 'log'

class Account
  attr_reader :balance, :log

  def initialize(balance = 0, log = Log.new)
    @balance = balance
    @log = log
  end

  def deposit(value)
    transaction(value, 'deposit')
  end

  def withdrawal(value)
    transaction(value, 'withdrawal')
  end

  def transaction(value, type, transaction = Transaction.new)
    conditions(value, type)
    transaction.add_details(value, @balance, type)
    @balance = transaction.calculate_balance
    @log.add(transaction.show_details)
  end

  def statement(printer = Printer.new)
    printer.statement(@log.show_history)
  end

  private

  def conditions(value, type)
    raise 'Must be a number' if not_number(value)
    return unless type == 'withdrawal' && exceeds_balance?(value)

    raise 'Insufficient credit'
  end

  def not_number(value)
    value.is_a?(Numeric) == false
  end

  def exceeds_balance?(value)
    (@balance - value) <= 0
  end
end
