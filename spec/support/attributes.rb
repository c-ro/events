def event_attributes(overrides = {})
  {
      name: "Iron Man",
      location: 318412101.00,
      description: "Tony Stark builds an armored suit to fight the throes of evil",
      price: 10
  }.merge(overrides)
end