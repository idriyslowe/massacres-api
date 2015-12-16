30.times do
  Incident.create(
    :murderer_first_name => Faker::Name.first_name,
    :murderer_last_name => Faker::Name.last_name,
    :birthdate => Faker::Date.backward(50000),
    :location => Faker::Address.city,
    :number_of_victims => rand(10),
    :sentence => ["Life in Prison", "Death"].sample,
    :weapon => ["Axe", "Laptop", "Shoelace", "Library Book", "Dagger", "Drone"].sample
    )
end