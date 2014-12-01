require "rails_helper"

describe "Navigating events" do
  it "Allows navigation from detail to listing page" do

    event = Event.create(event_attributes)
    visit event_url(event)

    click_link "all events"

    expect(current_path).to eq(events_path)

  end

  it "Allows navigation from listing to detail page" do

    event = Event.create(event_attributes)
    visit events_url

    click_link event.name

    expect(current_path).to eq(event_path(event))

  end

end