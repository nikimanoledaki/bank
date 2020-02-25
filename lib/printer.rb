# frozen_string_literal: true

class Printer
  attr_reader :array

  def initialize
    @array = ["date || credit || debit || balance"]
  end

  def statement(log)
    format(log)
    print
  end

  def format(log)
    log.map do |t|
      if t[:type] == "deposit"
        t = "#{t[:date]} || #{number(t[:value])} || || #{number(t[:balance])}"
      else
        t = "#{t[:date]} || || #{t[:value]} || #{t[:balance]}"
      end
      @array << t
    end
  end

  def print
    puts @array.join("\n")
  end

  def number(number)
    '%.2f' % number
  end
end
