puts "Delete old Seeds"

Booking.destroy_all
Review.destroy_all
Painting.destroy_all
User.destroy_all

puts "Creating 5 random paintings and users"

user1 = User.new(
  Faker::Internet.user('username', 'email', 'password')
)
user1.save!

painting1 = Painting.new(
  name: Faker::TvShows::RuPaul.quote,
  artist_name: Faker::Artist.name,
  year: rand(1765..2022),
  price: rand(10..666)
)
painting1.user = user1
painting1.save!

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
painting5.save!

puts "Create 3 bookings and reviews..."

review1 = Review.new(
  content: Faker::Restaurant.review,
  rating: rand(0..5)
)
review1.save!

booking1 = Booking.new(
  startdate: Faker::Date.backward(days: 14),
  enddate: Faker::Date.forward(days: 5)
)
booking1.review = review1
booking1.painting = painting1
booking1.user = user1
booking1.save!

review2 = Review.new(
  content: Faker::Restaurant.review,
  rating: rand(0..5)
)
review2.save!

booking2 = Booking.new(
  startdate: Faker::Date.backward(days: 14),
  enddate: Faker::Date.forward(days: 5)
)
booking2.review = review2
booking2.painting = painting2
booking2.user = user2
booking2.save!

review3 = Review.new(
  content: Faker::Restaurant.review,
  rating: rand(0..5)
)
review3.save!

booking3 = Booking.new(
  startdate: Faker::Date.backward(days: 14),
  enddate: Faker::Date.forward(days: 5)
)
booking3.review = review3
booking3.painting = painting3
booking3.user = user3
booking3.save!

puts "Finished!"