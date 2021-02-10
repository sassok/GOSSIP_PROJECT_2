# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Gossip.destroy_all

require 'faker'
10.times do |f|
  users = User.create!(name: Faker::Name.first_name, first_name: Faker::Name.last_name, age: Faker::Number.between(from: 17, to: 50), email: Faker::Internet.email)
  gossips = Gossip.create!(title: Faker::Restaurant.name, content: Faker::Restaurant.description, user: User.find(f+1))
  gossips = Gossip.create!(title: Faker::Restaurant.name, content: Faker::Restaurant.description, user: User.find(f+1))
end