puts "creating auditions..."
a1 = Audition.create(actor: "Ashley", location: "New York", phone: 5555555555, hired: false, role_id: 2)
a2 = Audition.create(actor: "Eve", location: "Malibu", phone: 5555555555, hired: true, role_id: 1)

puts "Creating roles..."
r1 = Role.create(character_name: "Princess Moana")
r2 = Role.create(character_name: "Princess Jasmine")

puts "Seeding done!"





