# frozen_string_literal: true

require_relative 'account'

class Transaction
  attr_reader :value, :balance, :type

  def initialize
    @value = value
    @balance = balance
    @type = type
  end

  def add_details(value, balance, type)
    @value = value
    @balance = balance
    @type = type
  end

  def show_details
    details = {date: date, type: type, value: @value, balance: calculate_balance}
  end

  def date
    Time.now.strftime('%d/%m/%Y')
  end

  def calculate_balance
    if @type == 'deposit'
      @balance += @value
    else
      @balance -= @value
    end
  end
end
