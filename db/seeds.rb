# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "cleaning house :)"
Review.destroy_all
Restaurant.destroy_all
puts "done cleaning "

5.times do
  Restaurant.create(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    phone_number: Faker::PhoneNumber,
    category: ["chinese", "italian", "japanese", "french", "belgian"].sample,

  )
  #binding.pry
  puts "made #{Restaurant.last.name}"


  Review.create(
    content: Faker::Restaurant.description,
    rating: rand(0..5),
    restaurant_id: Restaurant.last.id
  )
  #binding.pry
  puts "wrote #{Review.last.content}"
end
