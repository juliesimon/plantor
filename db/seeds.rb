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


plant_one = Plant.new(name:'Cactus', price_per_day: 50, address: "Paris", category: "Cactus")
plant_two = Plant.new(name:'Sapin', price_per_day: 50, address: "Paris", category: "Cactus" )
plant_three = Plant.new(name:'Bonsai', price_per_day: 50, address: "Paris", category: "Cactus" )
plant_four = Plant.new(name:'Orchidée', price_per_day: 50, address: "Paris", category: "Cactus" )

plant_one.remote_photo_url = "http://www.darxxide.com/wp-content/uploads/uncategorized/Tall-Potted-Plants-Png-plants-png-plant-pots-stands-for-free-u-flowers-images-at-dzzyncom-vine-leaves-free-Tall-Potted-Plants.jpg"
plant_two.remote_photo_url = "https://cdn2.bigcommerce.com/server5500/mvvy8/products/178/images/529/Idaho_pe_pvc_Premium__24256.1384147395.500.500.jpg?c=2"
plant_three.remote_photo_url = "https://orig00.deviantart.net/8903/f/2013/079/b/1/png_plant_c_by_moonglowlilly-d5yq2lg.png"
plant_four.remote_photo_url = "https://media1.popsugar-assets.com/files/thumbor/Hbtl-yWfdFLwgJa7SrLZVk-8c6I/fit-in/1024x1024/filters:format_auto-!!-:strip_icc-!!-/2015/02/27/768/n/1922794/3b6b41fb4f8d6493_ok_7/i/Split-Leaf-Philodendron.jpg"


plant_one.user =  alexia
plant_two.user =  alexia
plant_three.user =  alexia
plant_four.user = guillaume

plant_one.save!
plant_two.save!
plant_three.save!
plant_four.save!


booking_one = Booking.new(starts_at: DateTime.parse("09/01/2017 17:00"), ends_at: DateTime.parse("09/12/2017 19:00"), status: "pending")
booking_two = Booking.new(starts_at: DateTime.parse("09/01/2016 17:00"), ends_at: DateTime.parse("09/12/2016 19:00"), status: "accepted")
booking_three = Booking.new(starts_at: DateTime.parse("09/01/2017 17:00"), ends_at: DateTime.parse("09/12/2017 19:00"), status: "pending")
booking_four = Booking.new(starts_at: DateTime.parse("09/01/2017 17:00"), ends_at: DateTime.parse("09/12/2017 19:00"), status: "accepted")

booking_one.user = julie
booking_one.plant = plant_four

booking_two.user = julie
booking_two.plant = plant_two

booking_three.user = julie
booking_three.plant = plant_one

booking_four.user = julie
booking_four.plant = plant_three

booking_one.save!
booking_two.save!
booking_three.save!
booking_four.save!
