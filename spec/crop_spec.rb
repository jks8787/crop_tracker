require "spec_helper"
require_relative "../lib/crop_tracker/crop"

describe Crop do
  it "can add a Crop with a name and total amount" do
    crop = Crop.new(name: "Kale", amount: 10)
    expect(crop.name).to eq("Kale")
    expect(crop.amount).to eq(10)
  end

  it "can add an amount to the Crop" do
    crop = Crop.new(name: "Butternut Squash", amount: 16)
    crop.add_amt(10)
    expect(crop.amount).to eq(26)
  end

  it "can subtract an amount of the Crop" do
    crop = Crop.new(name: "Butternut Squash", amount: 16)
    crop.subtract_amt(10)
    expect(crop.amount).to eq(6)
  end 
end
