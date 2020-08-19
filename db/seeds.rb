puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."

10.times do
  Restaurant.create!(name: Faker::Restaurant.name, address: Faker::Address.street_address, stars: rand(1..5), chef_name: Faker::Name.name_with_middle)
end


# dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", stars: 5 }

# pizza_east =  { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", stars: 4 }

# [ dishoom, pizza_east ].each do |attributes|
#   restaurant = Restaurant.create!(attributes)
#   puts "Created #{restaurant.name}"
# end
puts "Finished!"