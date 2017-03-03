class Crop
  attr_reader :name, :amount

  def initialize(options = {})
    @name = options[:name]
    @amount =   options[:amount] || 0
  end

  def add_amt(amt)
    # will increase the amount of the crop
    @amount += amt
  end

  def subtract_amt(amt)
    # will decrease the amount of the crop
    @amount -= amt
  end
end
