# frozen_string_literal: true

class Printer
  attr_reader :array

  def initialize
    @array = ['date || credit || debit || balance']
  end

  def statement(log)
    format(log)
    print
  end

  def format(log)
    log.reverse.map do |t|
      t = if t[:type] == 'deposit'
            "#{t[:date]} || #{number(t[:value])} || || #{number(t[:balance])}"
          else
            "#{t[:date]} || || #{number(t[:value])} || #{number(t[:balance])}"
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
