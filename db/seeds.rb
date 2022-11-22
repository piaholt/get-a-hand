# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cleaning databse..."
#Service.destroy_all

User.create(username: "bentest", first_name: "Ben", last_name: "Test", email: "ben.test@icloud.com", location: "London")
User.create(username: "mateotest", first_name: "Mateo", last_name: "Test", email: "mateo.test@icloud.com", location: "London")
User.create(username: "charleentest", first_name: "Charleen", last_name: "Test", email: "charleen.test@icloud.com", location: "London")
User.create(username: "piatest", first_name: "Pia", last_name: "Test", email: "pia.test@icloud.com", location: "London")


Service.create(title: "Window cleaning", description: "Handle building windows cleaning", category: "Cleaning", price: 30, user_id: 1)
