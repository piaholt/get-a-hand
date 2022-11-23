# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'date'
require "open-uri"
puts "Cleaning database..."

Booking.destroy_all
Service.destroy_all
User.destroy_all




user_1 = User.create(username: "bentest", first_name: "Ben", last_name: "Test", email: "ben.test@icloud.com", location: "London", password:"123456")
puts "user created"
user_2 = User.create(username: "mateotest", first_name: "Mateo", last_name: "Test", email: "mateo.test@icloud.com", location: "London", password:"123456")
puts "user created"
user_3 = User.create(username: "char", first_name: "Charleen", last_name: "Ipping", email: "charleen.ip@gmail.com", location: "London", password: "123456")
puts "user created"
user_4 = User.create(username: "piatest", first_name: "Pia", last_name: "Test", email: "pia.test@icloud.com", location: "London", password:"123456")
puts "user created"




Booking.create(user: User.first, service: Service.first, starting_date: DateTime.new(2022,12,1), end_date: DateTime.new(2022,12,3))

babysitting = Service.new(
  title: "Babysitting",
  description: "I love kids!",
  category: "Babysitting",
  price: 30,
  user: user_1,
)

babysitting.photo.attach(io: URI.open("https://media.istockphoto.com/id/1309262552/photo/african-american-mother-singing-lullaby-for-infant-to-sleep.jpg?s=612x612&w=0&k=20&c=-jxrzTlr4qsS3KWpSNmLHglF-H1NQwWDkypoqL_hvc8="), filename: "#{babysitting}", content_type: "image/png")
babysitting.save!
puts "service created"

dogsitting = Service.new(
  title: "Loving dogsitter",
  description: "I love all dogs, and they love me too!",
  category: "Pet care",
  price: 40,
  user: user_2,
)

dogsitting.photo.attach(io: URI.open("https://images.unsplash.com/photo-1450778869180-41d0601e046e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2186&q=80"), filename: "#{dogsitting}", content_type: "image/png")
dogsitting.save!
puts "service created"

cleaning = Service.new(
  title: "Professional cleaning",
  description: "A very well experienced cleaner",
  category: "Cleaning",
  price: 20,
  user: user_3,
)

cleaning.photo.attach(io: URI.open("https://images.unsplash.com/photo-1563453392212-326f5e854473?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80"), filename: "#{cleaning}", content_type: "image/png")
cleaning.save!
puts "service created"

gardening = Service.new(
  title: "Passionate gardener",
  description: "Making my passion my job",
  category: "Gardening",
  price: 50,
  user: user_4,
)

gardening.photo.attach(io: URI.open("https://images.unsplash.com/photo-1617576683096-00fc8eecb3af?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80"), filename: "#{gardening}", content_type: "image/png")
gardening.save!
puts "service created"



# Service.create(title: "Window cleaning", description: "Handle building windows cleaning", category: "Cleaning", price: 30, user_id: 1)
# Service.create(title: "Locksmith", description: "Locked yourself out? Your lock is broken? Don't worry i can take care of it!", category: "Locksmith", price: 50, user_id: 3)
# Service.create(title: "Lawn-mowing", description: "I can mow your lawn - no matter how big or small", category: "Gardening", price: 15, user_id: 4)
# Service.create(title: "Gardening", description: "Any kind of gardening, need someoone to trim your hedge, plant flowers or simply water your plants while your away? I got you", category: "Gardening", price: 20, user_id: 3)
# Service.create(title: "Dog sitting", description: "Any dog - big or small", category: "Pet care", price: 10, user_id: 2)
