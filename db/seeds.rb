require "open-uri"

file1 = URI.open("https://upload.wikimedia.org/wikipedia/commons/3/3e/A_Starry_night_dream_t.m_80_x_60_anno_2019.jpg")
file2 = URI.open("https://upload.wikimedia.org/wikipedia/commons/9/9d/%22Village%22_-_NARA_-_558821.jpg")
file3 = URI.open("https://upload.wikimedia.org/wikipedia/commons/8/8b/1990_%D0%9B%D0%B0%D0%B4%D1%8C%D1%8F_%D0%A5%D0%B0%D1%80%D0%BE%D0%BD%D0%B0.jpg")
file4 = URI.open("https://upload.wikimedia.org/wikipedia/commons/f/ff/2_Iris_Hopp_Orca_Sun_Moon_Whale_Dolphin.png")
file5 = URI.open("https://upload.wikimedia.org/wikipedia/commons/9/95/Age_of_Sail.jpg")
file6 = URI.open("https://upload.wikimedia.org/wikipedia/commons/8/83/The_art_of_painting_in_the_nineteenth_century_%281908%29_%2814783468075%29.jpg")
puts "Delete old Seeds"

Booking.destroy_all
Review.destroy_all
Painting.destroy_all
User.destroy_all

puts "Creating 5 random paintings and users"

user1 = User.new(
  email: "test@test.com",
  password: "testtest"
)
user1.save!

painting1 = Painting.new(
  name: Faker::TvShows::RuPaul.quote,
  artist_name: Faker::Artist.name,
  year: rand(1765..2022),
  price: rand(10..666)
)
painting1.user = user1

painting1.photo.attach(io: file1, filename: "p1.png", content_type: "image/png")
painting1.save!

painting1a = Painting.new(
  name: Faker::TvShows::RuPaul.quote,
  artist_name: Faker::Artist.name,
  year: rand(1765..2022),
  price: rand(10..666)
)
painting1a.user = user1
# Add photo to painting:

painting1a.photo.attach(io: file6, filename: "p1.png", content_type: "image/png")
painting1a.save!

user2 = User.new(
  Faker::Internet.user('username', 'email', 'password')
)
user2.save!

painting2 = Painting.new(
  name: Faker::TvShows::RuPaul.quote,
  artist_name: Faker::Artist.name,
  year: rand(1765..2022),
  price: rand(10..666)
)
painting2.user = user2

#  Add photo to painting:

painting2.photo.attach(io: file2, filename: "p2.png", content_type: "image/png")

painting2.save!

user3 = User.new(
  Faker::Internet.user('username', 'email', 'password')
)
user3.save!

painting3 = Painting.new(
  name: Faker::TvShows::RuPaul.quote,
  artist_name: Faker::Artist.name,
  year: rand(1765..2022),
  price: rand(10..666)
)
painting3.user = user3

#  Add photo to painting:

painting3.photo.attach(io: file3, filename: "p3.png", content_type: "image/png")

painting3.save!

user4 = User.new(
  Faker::Internet.user('username', 'email', 'password')
)
user4.save!

painting4 = Painting.new(
  name: Faker::TvShows::RuPaul.quote,
  artist_name: Faker::Artist.name,
  year: rand(1765..2022),
  price: rand(10..666)
)
painting4.user = user4

#  Add photo to painting:

painting4.photo.attach(io: file4, filename: "p4.png", content_type: "image/png")

painting4.save!

user5 = User.new(
  Faker::Internet.user('username', 'email', 'password')
)
user5.save!

painting5 = Painting.new(
  name: Faker::TvShows::RuPaul.quote,
  artist_name: Faker::Artist.name,
  year: rand(1765..2022),
  price: rand(10..666)
)
painting5.user = user5

#  Add photo to painting:

painting5.photo.attach(io: file5, filename: "p5.png", content_type: "image/png")

painting5.save!

puts "Create 3 bookings and reviews..."

puts "Create 3 bookings and reviews..."

review1 = Review.new(
  content: Faker::Restaurant.review,
  rating: rand(0..5)
)
review1.painting = painting1
review1.save!

booking1 = Booking.new(
  startdate: Faker::Date.backward(days: 14),
  enddate: Faker::Date.forward(days: 5)
)
booking1.painting = painting1
booking1.renter = user5
booking1.save!

review2 = Review.new(
  content: Faker::Restaurant.review,
  rating: rand(0..5)
)
review2.painting = painting2
review2.save!

booking2 = Booking.new(
  startdate: Faker::Date.backward(days: 14),
  enddate: Faker::Date.forward(days: 5)
)
booking2.painting = painting2
booking2.renter = user4
booking2.save!

review3 = Review.new(
  content: Faker::Restaurant.review,
  rating: rand(0..5)
)
review3.painting = painting3
review3.save!

booking3 = Booking.new(
  startdate: Faker::Date.backward(days: 14),
  enddate: Faker::Date.forward(days: 5)
)
booking3.painting = painting3
booking3.renter = user1
booking3.save!

booking4 = Booking.new(
  startdate: Faker::Date.backward(days: 14),
  enddate: Faker::Date.forward(days: 5)
)
booking4.painting = painting3
booking4.renter = user2
booking4.save!

booking5 = Booking.new(
  startdate: Faker::Date.backward(days: 14),
  enddate: Faker::Date.forward(days: 5)
)
booking5.painting = painting3
booking5.renter = user5
booking5.save!

puts "Finished"
puts "Test-Email: test@test.com"
puts "Password: testtest"

puts "Finished"
