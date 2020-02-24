class Transaction
  
  attr_reader :value

  def initialize(value)
    @value = value
    @date = date
  end

  def date
    Time.now.strftime("%d/%m/%Y")
  end

end
