# frozen_string_literal: true

require_relative 'transaction'

class Log
  attr_reader :history

  def initialize
    @history = []
  end

  def add_transaction(transaction)
    @history.append(transaction)
  end

  def show_history
    @history
  end

end
