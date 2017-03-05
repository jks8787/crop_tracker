require "spec_helper"
require_relative "../lib/crop_tracker/input_parser"

describe InputParser do
  it "can return the entered crop name" do
    text = "add crop kale 24oz"
    parsed_data = InputParser.new(text)
    expect(parsed_data.entered_name).to eq("kale")
  end

  it "can return the command type" do
    text = "add crop carrots 24oz"
    parsed_data = InputParser.new(text)
    expect(parsed_data.command_type).to eq("add crop")
  end

  it "can return the amount" do
    text = "subtract amt carrots 2oz"
    parsed_data = InputParser.new(text)
    expect(parsed_data.amount).to eq(2)
  end
end
