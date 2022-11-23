# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cleaning databse..."
Booking.destroy_all
Service.destroy_all


User.create(username: "bentest", first_name: "Ben", last_name: "Test", email: "ben.test@icloud.com", location: "London", password: "2222222b")
User.create(username: "mateotest", first_name: "Mateo", last_name: "Test", email: "mateo.test@icloud.com", location: "London", password: "2222222m")
User.create(username: "charleentest", first_name: "Charleen", last_name: "Test", email: "charleen.test@icloud.com", location: "London", password: "2222222c")
User.create(username: "piatest", first_name: "Pia", last_name: "Test", email: "pia.test@icloud.com", location: "London", password: "2222222p")


Service.create(title: "Window cleaning", description: "Handle building windows cleaning", category: "Cleaning", price: 30, user_id: 1)
Service.create(title: "Locksmith", description: "Locked yourself out? Your lock is broken? Don't worry i can take care of it!", category: "Locksmith", price: 50, user_id: 3)
Service.create(title: "Lawn-mowing", description: "I can mow your lawn - no matter how big or small", category: "Gardening", price: 15, user_id: 4)
Service.create(title: "Gardening", description: "Any kind of gardening, need someoone to trim your hedge, plant flowers or simply water your plants while your away? I got you", category: "Gardening", price: 20, user_id: 3)
Service.create(title: "Dog sitting", description: "Any dog - big or small", category: "Pet sitting", price: 10, user_id: 2)
