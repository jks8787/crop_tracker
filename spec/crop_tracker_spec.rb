require "spec_helper"
require "pry"

describe CropTracker do
  it "has a version number" do
    expect(CropTracker::VERSION).not_to be nil
  end

  it "returns an initial_instruction" do
    ct = CropTracker::Instruct.new()
    ct.initial_instruction
    expect { ct.initial_instruction }.to output("This is crop_tracker!\n").to_stdout
  end

  it "can add a crop, add and amount, and subtract an amount from input passed in" do
      processor =
        CropTracker::CropHandler.new(file_name: "test1.csv")
      inputArray = [
          "add crop apples 16oz",
          "add amt apples 10oz",
          "subtract amt apples 6oz"
        ]
      inputArray.each do |input|
          processor.parse_info(input)
      end
      expect(processor.data.length).to eq(1)
      expect(processor.data[0].class.to_s).to eq("Crop")
      expect(processor.data[0].name).to eq("apples")
      expect(processor.data[0].amount).to eq(20)
    end
end
