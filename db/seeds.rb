# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."

dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: "chinese" }
pizza_east = { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category: "italian" }
dolcetto = { name: "Dolcetto", address: "3020 Colonel Talbot Rd, London", category: "italian" }
hungry_ninja = { name: "Hungry Ninja", address: "2208 Piccadilly St, London, ON N6A 1S1", category: "japanese" }
davids_bistro = { name: "David's Bistro", address: "432 Richmond St, London, ON N6A 3C9", category: "belgian" }

[dishoom, pizza_east, dolcetto, hungry_ninja, davids_bistro].each do |attributes|
  restaurant = Restaurant.create(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
