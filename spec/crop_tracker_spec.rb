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
end
