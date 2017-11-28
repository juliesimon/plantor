# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
user_one = User.create(email: "alexia@gmail.com", password: "azertyuiop")
user_two = User.create(email: "guillaume@gmail.com", password: "azertyuiop")
user_three = User.create(email: "julie@gmail.com", password: "azertyuiop")

plant_one = Plant.new(name:'Cactus', price_per_day: 50, address: "Paris", category: "Cactus")
plant_two = Plant.new(name:'Sapin', price_per_day: 50, address: "Paris", category: "Cactus" )
plant_three = Plant.new(name:'Bonsai', price_per_day: 50, address: "Paris", category: "Cactus" )
plant_four = Plant.new(name:'Orchidée', price_per_day: 50, address: "Paris", category: "Cactus" )

plant_one.remote_photo_url = "http://power.itp.ac.cn/~jmyang/funny/fun4.jpg"
plant_two.remote_photo_url = "http://power.itp.ac.cn/~jmyang/funny/fun4.jpg"
plant_three.remote_photo_url = "http://power.itp.ac.cn/~jmyang/funny/fun4.jpg"
plant_four.remote_photo_url = "http://power.itp.ac.cn/~jmyang/funny/fun4.jpg"
plant_one.user = user_one
plant_two.user = user_one
plant_three.user = user_one
plant_four.user = user_two
plant_one.save!
plant_two.save!
plant_three.save!
plant_four.save!
booking_one = Booking.new(status: "pending")
booking_one.user = user_one
booking_one.plant = plant_four
booking_one.save!
