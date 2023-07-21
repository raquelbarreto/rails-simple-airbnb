# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts 'Cleaning database...'
Flat.destroy_all

puts 'Creating flats...'
spacious = { name: 'Spacious Stay for 2 in East London', address: '7 Boundary St, London E2 7JE', description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory', price_per_night: 75, number_of_guests: 2 }
central = { name: 'Amazing Flat in Central London', address: 'Euston Rd London N1C 4QP', description: 'A mini apartment within the clock tower apartment at St Pancras Station, with its own en suite bathroom and kitchen and sitting area.', price_per_night: 100, number_of_guests: 3 }
cozy =  { name: 'Cozy Flat London', address: '10 Clifton Gardens London W9 1DT', description: 'A cozy and comfortable flat with one double bedroom and one single bedroom. Good size kitchen and a charming balcony', price_per_night: 60, number_of_guests: 3 }
garden = { name: 'Light & Spacious Garden Terrace', address: '56A Shoreditch High St, London E1 6PQ', description: 'Lovely warm comfortable and stylishly furnished house. Private bedroom and bathroom with shared living areas.', price_per_night: 95, number_of_guests: 4 }

[ spacious, central, cozy, garden ].each do |attributes|
  flat = Flat.create!(attributes)
  puts "Created #{flat.name}"
end
puts 'Finished!'
