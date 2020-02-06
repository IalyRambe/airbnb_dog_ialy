# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

Dogsitter.destroy_all
Dog.destroy_all
Stroll.destroy_all

dogsitter_array = []
dog_array = []

10.times do |index|
  dogsitter = Dogsitter.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
  dog = Dog.create!(name: Faker::Name.first_name, breed: Faker::Creature::Dog.breed)
  dogsitter_array << dogsitter
  dog_array << dog
end
