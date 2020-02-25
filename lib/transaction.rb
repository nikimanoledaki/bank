class Transaction

  attr_reader :value, :balance, :type

  def initialize(value:, balance:, type:)
    @value = value
    @balance = balance
    @type = type
    @date = date
  end

  def date
    Time.now.strftime("%d/%m/%Y")
  end

  def calculate_balance
    if value.negative?
      @balance -= value
    else
      @balance += value
    end
  end

end
