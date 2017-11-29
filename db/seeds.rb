# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Plant.destroy_all
User.destroy_all

puts 'Creating users...'
alexia = User.create(firstname: "Alexia", lastname: "Le Tarnec", email: "alexia@gmail.com", password: "azertyuiop")
guillaume = User.create(firstname: "Guillaume", lastname: "Hercot", email: "guillaume@gmail.com", password: "azertyuiop")
julie = User.create(firstname: "Julie", lastname: "Simon", email: "julie@gmail.com", password: "azertyuiop")
mathilde = User.create(firstname: "Mathilde", lastname: "Ganancia", email: "mathilde@gmail.com", password: "azertyuiop")

puts 'Creating plants...'
plants_attributes = [
  {
    name:         'Cute Cactus',
    price_per_day: 4,
    instruction: "Water cactus when the top 1/2 inch of the growing medium is dry to the touch. Soak the medium thoroughly and allow it to drain when watering -- do not leave the cacti constantly sitting in a dish of water.",
    address:      '19 boulevard Victor Hugo 92200 Neuilly sur Seine',
    category:     'cactus',
    remote_photo_url: 'https://unsplash.com/photos/fbAnIjhrOL4',
    user: alexia
  },
  {
    name:         'Majestuous Christmas Tree',
    price_per_day: 13,
    instruction: "When you choose to decorate your home with a real Christmas tree, there are steps you can take to keep the tree green, healthy and safe throughout the holiday season. If you love the characteristic aroma of an evergreen tree, then you need to take care of it at the source. It's important that you know to appropriately choose and care for your tree so that it can last longer and you can be more environmentally conscious.",
    address:      '19 boulevard Victor Hugo 92200 Neuilly sur Seine',
    category:     'conifer',
    remote_photo_url: 'https://www.google.fr/url?sa=i&rct=j&q=&esrc=s&source=imgres&cd=&cad=rja&uact=8&ved=0ahUKEwilo6KDu-PXAhWBmbQKHYb7DboQjRwIBw&url=https%3A%2F%2Fwww.balsamhill.com%2Fc%2Funder-6-ft-artificial-christmas-trees&psig=AOvVaw1Kvhb0Nh3-By1DHWeuTIQV&ust=1512033811033915',
    user: alexia
  },
  {
    name:         'Amazing Monstera Deliciosa',
    price_per_day: 9,
    instruction: "Water when the top quarter-to-third of the soil feels dry to the touch. Keep leaves clean and dust-free by washing with a cloth dipped in a solution of a drop of dishwashing detergent in a few cups of water.",
    address:      '19 boulevard Victor Hugo 92200 Neuilly sur Seine',
    category:     'Indoor Plant (large)',
    remote_photo_url: 'https://cdn.shopify.com/s/files/1/0245/2459/products/monstera-deliciosa-indoor-plant_1024x1024.jpg?v=1489290367',
    user: alexia
  },
  {
    name:         'Sunny Orange Tree',
    price_per_day: 10,
    instruction: "Water your citrus tree similarly to any houseplant. Water in thoroughly at intervals and allow the soil to dry out between watering.",
    address:      '19 boulevard Victor Hugo 92200 Neuilly sur Seine',
    category:     'Fruit Tree',
    remote_photo_url: 'https://www.livinghours.com/wp-content/uploads/2016/05/Calamondin-Orange.jpg',
    user: alexia
  },
  {
    name:         'Easy-going Calathea',
    price_per_day: 7,
    instruction: "A Calathea Plant likes bright indirect light; so placing it in front of an east, west, or north window is ideal. Too much direct sun burns the leaves of a Calathea Plant and causes the beautiful leaf colors to fade. Keep the soil of a Calathea Plant moist but never soggy. Allow the top 2-3” to dry out before watering. Never let a Calathea Plant sit in water.",
    address:      '16 villa Gaudelet 75011 Paris',
    category:     'Green Plant',
    remote_photo_url: 'https://s-media-cache-ak0.pinimg.com/originals/de/ef/05/deef0500a80943f5b5bb034a4994a0e5.jpg',
    user: mathilde
  },
  {
    name:         'Original Airplant',
    price_per_day: 6,
    instruction: "Provided the atmosphere is not too dry it can survive with water misting and the occasional bath. Give it bright, filtered light. Protect it from frosts.",
    address:      '16 villa Gaudelet 75011 Paris',
    category:     'Decorative Plant',
    remote_photo_url: 'https://i0.wp.com/hello-hello.fr/wp-content/uploads/2017/02/plante-originale-airplant-tillandsias-xerographica.jpg?w=609&h=609&crop=1',
    user: mathilde
  },
  {
    name:         'Pretty Chinese Money Plant',
    price_per_day: 5,
    instruction: "The best situation for a Chinese money plant is bright light, with no direct sunlight. The soil needs to mostly dry out between waterings, with more watering required in warmer, sunnier weather.",
    address:      '7 rue de Courcelles 75017 Paris',
    category:     'Green Plant',
    remote_photo_url: 'http://cdn.shopify.com/s/files/1/1802/1289/articles/2_1024x1024.jpg?v=1496745397',
    user: guillaume
  }
]

Plant.create(plants_attributes)

Booking.create!(plant: Plant.first, user: mathilde, status: "accepted", starts_at: DateTime.parse("09/11/2017 17:00"), ends_at: DateTime.parse("12/12/2017 17:00"))

puts 'Finished creating plants!'
