# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Restaurant.destroy_all
puts "Destroyed existing restaurants"

Restaurant.create!(
  name: 'Lipopete',
  address: 'Warthestr.',
  phone_number: '459090',
  category: 'french'
)
Restaurant.create!(
  name: 'Seeds',
  address: 'Hermanstr.',
  phone_number: '333333',
  category: 'belgian'
)
Restaurant.create!(
  name: 'Honkon',
  address: 'Emserstr.',
  phone_number: '45555',
  category: 'chinese'
)
Restaurant.create!(
  name: 'mama',
  address: 'Romestr',
  phone_number: '34343434',
  category: 'italian'
)
Restaurant.create!(
  name: 'Ohlala',
  address: 'Paris.',
  phone_number: '4884848',
  category: 'french'
)
