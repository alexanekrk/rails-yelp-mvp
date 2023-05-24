puts "Cleaning the db..."
Restaurant.destroy_all

puts "Creating 5 restaurants..."

5.times do
  restaurant = Restaurant.new(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    phone_number: Faker::PhoneNumber.cell_phone,
    category: %w[chinese italian japanese french belgian].sample
  )
  restaurant.save
  puts "Restaurant with id #{restaurant.id} was created"
end

puts "All done!"
