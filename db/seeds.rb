# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Plant.destroy_all

user_one = User.create(email: "alexialetarnec@gmail.com", password: "blabla")
plant_one = Plant.new(name:'Cactus', price_per_day: 50, address: "Paris", category: "plantes vertes" )
plant_one.user = user_one
plant_one.save!

plant_two = Plant.new(name:'Cactus', price_per_day: 50, address: "Paris", category: "plantes vertes" )
plant_two.user = user_one
plant_two.save!

plant_three = Plant.new(name:'Cactus', price_per_day: 50, address: "Paris", category: "plantes vertes" )
plant_three.user = user_one
plant_three.save!

plant_four = Plant.new(name:'Cactus', price_per_day: 50, address: "Paris", category: "plantes vertes" )
plant_four.user = user_one
plant_four.save!
