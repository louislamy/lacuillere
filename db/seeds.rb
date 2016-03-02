# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

5.times do
  Restaurant.create(name: Faker::Name.name, address: Faker::Address.street_address, category: ['french', 'chinese', 'italian', 'japanese', 'belgian'].sample, phone_number: Faker::PhoneNumber.phone_number)
end
