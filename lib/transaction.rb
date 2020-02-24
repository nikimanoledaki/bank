class Transaction

  attr_reader :value, :balance

  def initialize(value:, balance:)
    @value = value
    @balance = balance
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
