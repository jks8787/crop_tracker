class InputParser
  attr_reader :line, :line_data_array

  def initialize(line)
    @line = line
    @line_data_array = line.split(" ")
  end

  def entered_name
    # the name will be always the second item
    line_data_array[1]
  end

  def command_type
    # the command_type will be always the first item
    line_data_array[0].downcase
  end

  def amount
    # find the 'oz', remove it and then make it an int
    (@line[/\d+oz{1}/,0].delete "oz").to_i
  end

end
