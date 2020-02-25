# frozen_string_literal: true

require_relative 'transaction'

class Log
  attr_reader :history

  def initialize
    @history = []
  end

  def add(transaction_details)
    @history.append(transaction_details)
  end

  def show_history
    @history
  end
end
