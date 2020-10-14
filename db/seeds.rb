require 'faker'
puts "Cleaning the database..."
Restaurant.destroy_all


puts "Creating 100 restaurants..."
100.times do
  restaurant = Restaurant.new(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    chef_name: Faker::Games::Pokemon.name,
    stars: rand(1..5)
  )
  restaurant.save!
  puts "#{restaurant.name} created!"
end

puts "Seeded ended!"
