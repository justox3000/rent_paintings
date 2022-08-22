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
p painting1
painting1.user_id = user1.id
p painting1.valid?
painting1.save!
