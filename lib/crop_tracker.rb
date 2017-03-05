require "crop_tracker/version"
require "crop_tracker/crop"
require "crop_tracker/input_parser"
require "csv"

module CropTracker
  class Instruct
    def initial_instruction
      puts 'This is crop_tracker!'
    end
  end

  class CropHandler
    attr_reader :file_name, :data, :stored_data

    def initialize(options = {})
      @file_name = options[:file_name] || "data_file.csv"
      @data = []
      @stored_data = hydrate_data_store_if_needed
    end

    def add_crop(parsed_line)
      total_data = @stored_data + @data
      matching_crop = total_data.find {
        |c| (
              c.name ==  parsed_line.entered_name
             )
      }
      if !matching_crop
        @data << Crop.new(
                           name: parsed_line.entered_name,
                           amount: parsed_line.amount
                         )
      else
        puts "Crop already added - please check entered info"
      end
    end

    def add_amt_or_subtract_amt(parsed_line)
      total_data = @stored_data + @data
      matching_crop = total_data.find { |c| c.name == parsed_line.entered_name }
      if matching_crop && parsed_line.command_type == 'add amt' ?
          matching_crop.add_amt(parsed_line.amount) :
          matching_crop.subtract_amt(parsed_line.amount)
      end
    end

    def parse_info(passed_info)
      # check passed information and create instance of Parser class
      info =
        passed_info.class.to_s == 'Array' ? passed_info.join(" ") : passed_info
      parsed_line = passed_info != "\n" ? InputParser.new(info) : nil;
      if parsed_line.command_type == "add crop"
        self.add_crop(parsed_line)
      elsif ["add amt", "subtract amt"].include?(parsed_line.command_type)
        self.add_amt_or_subtract_amt(parsed_line)
      else
        puts "command type not recognized"
      end
    end

    def hydrate_data_store_if_needed
      # check if file exists and read from it
      info = []
      if File.exist?(@file_name)
        CSV.foreach(@file_name) do |row|
          data = row[0].split('*')
          info << Crop.new(
                            name: data[0],
                            amount: data[1].to_i
                          )
        end
      end
      info
    end

    def format_data
      total_data =
        (@stored_data + @data).sort! {
          |a,b| a.name.downcase <=> b.name.downcase
        }
      formated_data = []
      total_data.each do |crop|
        formated_data << [
                            crop.name,
                            crop.amount
                          ]
      end
      formated_data
    end

    def write_to_data_store
      # write to the data store - using a csv for the moment
      if File.exist?(@file_name)
        File.delete(@file_name)
      end
      CSV.open(@file_name, "wb") do |csv|
        format_data.each do |d|
          csv << [d.join("*")]
        end
      end
    end

    def print_summary_of_data
      if File.exist?(@file_name)
        CSV.foreach(@file_name) do |row|
          puts "#{row[0].split('*').join(' amt ') + 'oz'}"
        end
      else
        puts "no data yet entered"
      end
    end

    def clear_data
      if File.exist?(@file_name)
        File.delete(@file_name)
        puts "data cleared"
      else
        puts "no data to be cleared"
      end
    end
  end
end
