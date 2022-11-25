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




user_1 = User.new(username: "benK", first_name: "Ben", last_name: "Kaefer", email: "ben@test.com", location: "London", password:"123456")
user_1.photo.attach(io: URI.open("https://media.istockphoto.com/id/1309262552/photo/african-american-mother-singing-lullaby-for-infant-to-sleep.jpg?s=612x612&w=0&k=20&c=-jxrzTlr4qsS3KWpSNmLHglF-H1NQwWDkypoqL_hvc8="), filename: "#{user_1}", content_type: "image/png")
user_1.save!
puts "user created"
user_2 = User.new(username: "mateoW", first_name: "Mateo", last_name: "Westphal", email: "ben@.com", location: "London", password:"123456")
user_2.photo.attach(io: URI.open("https://media.istockphoto.com/id/1309262552/photo/african-american-mother-singing-lullaby-for-infant-to-sleep.jpg?s=612x612&w=0&k=20&c=-jxrzTlr4qsS3KWpSNmLHglF-H1NQwWDkypoqL_hvc8="), filename: "#{user_1}", content_type: "image/png")
user_2.save!
puts "user created"
user_3 = User.create(username: "charI", first_name: "Charleen", last_name: "Ipping", email: "charleen@test.com", location: "London", password: "123456")
user_3.photo.attach(io: URI.open("https://media.istockphoto.com/id/1309262552/photo/african-american-mother-singing-lullaby-for-infant-to-sleep.jpg?s=612x612&w=0&k=20&c=-jxrzTlr4qsS3KWpSNmLHglF-H1NQwWDkypoqL_hvc8="), filename: "#{user_1}", content_type: "image/png")
user_3.save!
puts "user created"
user_4 = User.create(username: "piaH", first_name: "Pia", last_name: "Holtappels", email: "pia@test.com", location: "London", password:"123456")
user_4.photo.attach(io: URI.open("https://media.istockphoto.com/id/1309262552/photo/african-american-mother-singing-lullaby-for-infant-to-sleep.jpg?s=612x612&w=0&k=20&c=-jxrzTlr4qsS3KWpSNmLHglF-H1NQwWDkypoqL_hvc8="), filename: "#{user_1}", content_type: "image/png")
user_4.save!
puts "user created"
user_5 = User.create(username: "adriH", first_name: "Adrian", last_name: "Hards", email: "adrian@test.com", location: "London", password:"123456")
user_5.photo.attach(io: URI.open("https://media.istockphoto.com/id/1309262552/photo/african-american-mother-singing-lullaby-for-infant-to-sleep.jpg?s=612x612&w=0&k=20&c=-jxrzTlr4qsS3KWpSNmLHglF-H1NQwWDkypoqL_hvc8="), filename: "#{user_1}", content_type: "image/png")
user_5.save!
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

diy = Service.new(
  title: "Any DIY",
  description: "I am very good with any DIY task",
  category: "DIY",
  price: 40,
  user: user_1,
)

diy.photo.attach(io: URI.open("https://images.unsplash.com/photo-1595814433015-e6f5ce69614e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1740&q=80"), filename: "#{diy}", content_type: "image/png")
diy.save!
puts "service created"


tutoring = Service.new(
  title: "Helping students",
  description: "I used to be a teacher and can help students until high school",
  category: "Tutoring",
  price: 80,
  user: user_5,
)

tutoring.photo.attach(io: URI.open("https://images.unsplash.com/photo-1501504905252-473c47e087f8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1674&q=80"), filename: "#{tutoring}", content_type: "image/png")
tutoring.save!
puts "service created"

other = Service.new(
  title: "Makeup",
  description: "I can help you with your makeup for any occasion!",
  category: "Other",
  price: 45,
  user: user_2,
)

other.photo.attach(io: URI.open("https://images.unsplash.com/photo-1497005367839-6e852de72767?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2367&q=80"), filename: "#{other}", content_type: "image/png")
other.save!
puts "service created"

other_2 = Service.new(
  title: "Computer & IT",
  description: "I used to be a full-stack developer and can help with any front/back end issues",
  category: "Other",
  price: 85,
  user: user_5,
)

other_2.photo.attach(io: URI.open("https://images.unsplash.com/photo-1454165804606-c3d57bc86b40?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2370&q=80"), filename: "#{other_2}", content_type: "image/png")
other_2.save!
puts "service created"


other_3 = Service.new(
  title: "Hairdresser at home",
  description: "Let me give your hairs a fresh look and a new life",
  category: "Other",
  price: 40,
  user: user_5,
)

other_3.photo.attach(io: URI.open("https://plus.unsplash.com/premium_photo-1661762504132-c14f5d97acb0?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2370&q=80"), filename: "#{other_3}", content_type: "image/png")
other_3.save!
puts "service created"
