require 'rails_helper'

describe "An Event" do
  it "is free if the price is zero ollars" do

    event = Event.new(price: 0)

    expect(event.free?).to eq(true)

  end
  end

  describe "An Event" do
    it "is not free if the price is not zero ollars" do

      event = Event.new(price: 10.00)

      expect(event.free?).to eq(false)

    end
   end

describe "An Event" do
  it "is free if the price is blank" do

    event = Event.new(price: nil)

    expect(event.free?).to eq(true)

  end
end