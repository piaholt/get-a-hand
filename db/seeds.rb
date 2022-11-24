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
  category: "Pets",
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

admin = Service.new(
  title: "Professional assistant",
  description: "Honest and hardworking professional",
  category: "Admin",
  price: 70,
  user: user_4,
)

admin.photo.attach(io: URI.open("https://images.unsplash.com/photo-1526656001029-20a71b17f7ba?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1674&q=80"), filename: "#{admin}", content_type: "image/png")
admin.save!
puts "service created"

babysitting_2 = Service.new(
  title: "Fun babysitter",
  description: "Your kids will love me!",
  category: "Babysitting",
  price: 28,
  user: user_2,
)

babysitting_2.photo.attach(io: URI.open("https://media.istockphoto.com/id/1271954653/photo/affectionate-african-mother-constructing-building-with-cubes-with-small-kid.jpg?s=612x612&w=0&k=20&c=Ey89UGAP6GeKcdl8w8g7kk1qcIHcNiVYRu18u4PEtlA="), filename: "#{babysitting_2}", content_type: "image/png")
babysitting_2.save!
puts "service created"

gardening_2 = Service.new(
  title: "Experienced gardener",
  description: "I have my own business and am highly experienced",
  category: "Gardening",
  price: 60,
  user: user_3,
)

gardening_2.photo.attach(io: URI.open("https://images.unsplash.com/photo-1523348837708-15d4a09cfac2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1740&q=80"), filename: "#{gardening_2}", content_type: "image/png")
gardening_2.save!
puts "service created"

cooking = Service.new(
  title: "Passionate chef",
  description: "I had my own catine and now wants to be more flexible",
  category: "Cooking",
  price: 50,
  user: user_4,
)

cooking.photo.attach(io: URI.open("https://images.unsplash.com/photo-1551218808-94e220e084d2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=987&q=80"), filename: "#{cooking}", content_type: "image/png")
cooking.save!
puts "service created"

locksmith = Service.new(
  title: "Locksmith helper",
  description: "Locked yourself out? Your lock is broken? Don't worry i can take care of it!",
  category: "Locksmith",
  price: 90,
  user: user_1,
)

locksmith.photo.attach(io: URI.open("https://images.unsplash.com/flagged/photo-1564767609213-c75ee685263a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1673&q=80"), filename: "#{locksmith}", content_type: "image/png")
locksmith.save!
puts "service created"

car = Service.new(
  title: "Any car repair",
  description: "I can handle most of car repairs for you",
  category: "Car",
  price: 110,
  user: user_4,
)

car.photo.attach(io: URI.open("https://images.unsplash.com/photo-1619642751034-765dfdf7c58e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1674&q=80"), filename: "#{car}", content_type: "image/png")
car.save!
puts "service created"
