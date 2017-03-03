require "spec_helper"
require_relative "../lib/crop_tracker/input_parser"

describe InputParser do
  it "can return the entered crop name" do
    text = "Add Kale 24oz"
    parsed_data = InputParser.new(text)
    expect(parsed_data.entered_name).to eq("Kale")
  end

  it "can return the command type" do
    text = "Add Carrots 24oz"
    parsed_data = InputParser.new(text)
    expect(parsed_data.command_type).to eq("add")
  end

  it "can return the amount" do
    text = "Subtract Carrots 2oz"
    parsed_data = InputParser.new(text)
    expect(parsed_data.amount).to eq(2)
  end
end
