# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all

alexia = User.create(email: "alexia@gmail.com", password: "azertyuiop")
guillaume = User.create(email: "guillaume@gmail.com", password: "azertyuiop")
julie = User.create(email: "julie@gmail.com", password: "azertyuiop")

plant_one = Plant.new(name:'1', price_per_day: 50, address: "Paris", category: "Cactus")
plant_two = Plant.new(name:'2', price_per_day: 50, address: "Paris", category: "Cactus")
plant_three = Plant.new(name:'3', price_per_day: 50, address: "Paris", category: "Cactus")
plant_four = Plant.new(name:'4', price_per_day: 50, address: "Paris", category: "Cactus")

plant_one.remote_photo_url = "http://power.itp.ac.cn/~jmyang/funny/fun4.jpg"
plant_two.remote_photo_url = "http://power.itp.ac.cn/~jmyang/funny/fun4.jpg"
plant_three.remote_photo_url = "http://power.itp.ac.cn/~jmyang/funny/fun4.jpg"
plant_four.remote_photo_url = "http://power.itp.ac.cn/~jmyang/funny/fun4.jpg"


plant_one.user =  alexia
plant_two.user =  alexia
plant_three.user =  alexia
plant_four.user = guillaume

plant_one.save!
plant_two.save!
plant_three.save!
plant_four.save!

booking_one = Booking.new(starts_at: DateTime.parse("09/01/2017 17:00"), ends_at: DateTime.parse("09/12/2017 19:00"), status: "pending")

booking_one.user = julie
booking_one.plant = plant_four

booking_one.save!
