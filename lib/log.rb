# frozen_string_literal: true

require_relative 'transaction'

class Log
  attr_reader :history

  def initialize
    @history = []
  end

  def import(transaction)
    details = { date: transaction.date, 
      type: transaction.type, 
      value: transaction.value, 
      balance: transaction.calculate_balance }
    add_transaction(details)
  end

  def add_transaction(details)
    @history.append(details)
  end

  def show_history
    @history
  end
end
