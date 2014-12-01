require "rails_helper"

describe "Viewing the list of events" do
  it "shows the event" do

    event1 = Event.create(name: "Iron Man",
                          location: 318412101.00,
                          description: "Tony Stark builds an armored suit to fight the throes of evil",
                          price: 10)

    event2 = Event.create(name: "Superman",
                          location: 134218018.00,
                          description: "Clark Kent grows up to be the greatest super-hero",
                          price: 20)

    event3 = Event.create(name: "Spider-Man",
                          location: 403706375.00,
                          description: "Peter Parker gets bit by a genetically modified spider",
                          price: 0)

    visit events_url

    expect(page).to have_text("3 Events")
    expect(page).to have_text(event1.name)
    expect(page).to have_text(event2.name)
    expect(page).to have_text(event3.name)

    expect(page).to have_text(event1.location)
    expect(page).to have_text(event1.description[0..10])
    expect(page).to have_text(event1.starts_at)
    expect(page).to have_text("$10.00")

  end
end