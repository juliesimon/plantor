puts 'Cleaning database...'
Plant.destroy_all
User.destroy_all

puts 'Creating users...'
alexia = User.create(firstname: "Alexia", lastname: "Le Tarnec", email: "alexia@gmail.com", password: "azertyuiop")
guillaume = User.create(firstname: "Guillaume", lastname: "Hercot", email: "guillaume@gmail.com", password: "azertyuiop")
julie = User.create(firstname: "Julie", lastname: "Simon", email: "julie@gmail.com", password: "azertyuiop")
mathilde = User.create(firstname: "Mathilde", lastname: "Ganancia", email: "mathilde@gmail.com", password: "azertyuiop")
gelo = User.create(firstname: "Gelo", lastname: "Catil", email: "gelo@gmail.com", password: "azertyuiop")
god = User.create(firstname: "God", lastname: "Almighty", email: "god@gmail.com", password: "azertyuiop")
george = User.create(firstname: "George", lastname: "Clooney", email: "george@gmail.com", password: "azertyuiop")
jeanluc = User.create(firstname: "Jean Luc", lastname: "Melanchon", email: "melanchon@gmail.com", password: "azertyuiop")
dalida = User.create(firstname: "Dalida", lastname: "The Queen", email: "dalida@gmail.com", password: "azertyuiop")

puts 'Creating plants...'
addresses = ["5 rue François Rolland 94130 Nogent sur Marne", "28 rue de l'Université 75007 Paris", "23 rue André Barsacq 75018 Paris", "104 rue d'Aubervilliers Paris", "83 boulevard Vincent Auriol 75013 Paris", "39 rue des Francs Bourgeois 75004 Paris", "40 rue de Turbigo 75003 Paris", "122 rue Réaumur 75002 Paris", "82 avenue Denfert-Rochereau 75014 Paris", "43 avenue de la République 92120 Montrouge", "153 Boulevard Victor Hugo 92110 Clichy", "45 rue de Saint-Petersbourg 75008 Paris", "6 place du Marché 93100 Montreuil"]
superlatives = %w(Cheerful Splendid Cute Large Attractive Pleasing Refreshing Glorious Adorable Sweet Emiinent Distinguished Resplendent Brilliant Festive Dazzling Dope Magnanimous Sublime Divine Angelic Heavenly Wonderful Marvellous Phenomenal Astouning Remarkable Extraordinary Awesome Chilled Superb Enjoyable Prime Surprising Phenomenal Incredible Wondrous Portentous Indescribable Unique Rare)
plants_attributes = [
  {
    name:         'Cute Cactus',
    price_per_day: 4,
    instruction: "Water cactus when the top 1/2 inch of the growing medium is dry to the touch. Soak the medium thoroughly and allow it to drain when watering -- do not leave the cacti constantly sitting in a dish of water.",
    address:      '19 boulevard Victor Hugo 92200 Neuilly sur Seine',
    category:     'Cactus',
    remote_photo_url: 'https://images.unsplash.com/photo-1459411552884-841db9b3cc2a?auto=format&fit=crop&w=409&q=80&ixid=dW5zcGxhc2guY29tOzs7Ozs%3D',
    user: alexia
  },
  {
    name:         'Majestuous Christmas Tree',
    price_per_day: 13,
    instruction: "When you choose to decorate your home with a real Christmas tree, there are steps you can take to keep the tree green, healthy and safe throughout the holiday season. If you love the characteristic aroma of an evergreen tree, then you need to take care of it at the source. It's important that you know to appropriately choose and care for your tree so that it can last longer and you can be more environmentally conscious.",
    address:      '19 boulevard Victor Hugo 92200 Neuilly sur Seine',
    category:     'Conifer',
    remote_photo_url: 'https://www.webphotosource.net/img/source/yyy6vv959g/exact/BLU-T-1.jpeg?u=jlnpkv&q=70',
    user: alexia
  },
  {
    name:         'Amazing Monstera Deliciosa',
    price_per_day: 9,
    instruction: "Water when the top quarter-to-third of the soil feels dry to the touch. Keep leaves clean and dust-free by washing with a cloth dipped in a solution of a drop of dishwashing detergent in a few cups of water.",
    address:      '19 boulevard Victor Hugo 92200 Neuilly sur Seine',
    category:     'Large Plant',
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
  },
  {
    name:         "#{superlatives.sample} Christmas Tree",
    price_per_day: rand(2..20),
    instruction: "When you choose to decorate your home with a real Christmas tree, there are steps you can take to keep the tree green, healthy and safe throughout the holiday season. If you love the characteristic aroma of an evergreen tree, then you need to take care of it at the source. It's important that you know to appropriately choose and care for your tree so that it can last longer and you can be more environmentally conscious",
    address:      addresses.sample,
    category:     'Conifer',
    remote_photo_url: 'http://img1.southernliving.timeinc.net/sites/default/files/styles/responsive_etr_gallery_desktop_portrait/public/image/2015/11/main/2343801_chris033.jpg?itok=BQox8Syf',
    user: User.all.sample
  },
  {
    name:         "#{superlatives.sample} Christmas Tree",
    price_per_day: rand(2..20),
    instruction: "When you choose to decorate your home with a real Christmas tree, there are steps you can take to keep the tree green, healthy and safe throughout the holiday season. If you love the characteristic aroma of an evergreen tree, then you need to take care of it at the source. It's important that you know to appropriately choose and care for your tree so that it can last longer and you can be more environmentally conscious",
    address:      addresses.sample,
    category:     'Conifer',
    remote_photo_url: 'http://huntsvillerealestateonline.com/files/2016/12/Ornaments-Trees.jpg',
    user: User.all.sample
  },
  {
    name:         "#{superlatives.sample} Christmas Tree",
    price_per_day: rand(2..20),
    instruction: "When you choose to decorate your home with a real Christmas tree, there are steps you can take to keep the tree green, healthy and safe throughout the holiday season. If you love the characteristic aroma of an evergreen tree, then you need to take care of it at the source. It's important that you know to appropriately choose and care for your tree so that it can last longer and you can be more environmentally conscious",
    address:      addresses.sample,
    category:     'Conifer',
    remote_photo_url: 'http://ghk.h-cdn.co/assets/17/45/768x1152/christmastree.jpg',
    user: User.all.sample
  },
  {
    name:         "#{superlatives.sample} Christmas Tree",
    price_per_day: rand(2..20),
    instruction: "When you choose to decorate your home with a real Christmas tree, there are steps you can take to keep the tree green, healthy and safe throughout the holiday season. If you love the characteristic aroma of an evergreen tree, then you need to take care of it at the source. It's important that you know to appropriately choose and care for your tree so that it can last longer and you can be more environmentally conscious",
    address:      addresses.sample,
    category:     'Conifer',
    remote_photo_url: 'http://img1.southernliving.timeinc.net/sites/default/files/styles/responsive_etr_gallery_desktop_portrait/public/image/2017/06/main/red-and-white-candy-cane-christmas-tree.jpg?itok=S3TXp5qm',
    user: User.all.sample
  },
  {
    name:         "#{superlatives.sample} Christmas Tree",
    price_per_day: rand(2..20),
    instruction: "When you choose to decorate your home with a real Christmas tree, there are steps you can take to keep the tree green, healthy and safe throughout the holiday season. If you love the characteristic aroma of an evergreen tree, then you need to take care of it at the source. It's important that you know to appropriately choose and care for your tree so that it can last longer and you can be more environmentally conscious",
    address:      addresses.sample,
    category:     'Conifer',
    remote_photo_url: 'https://www.homedepot.com/catalog/productImages/1000/e9/e99e9508-801a-45a1-8de8-32067f61cec4_1000.jpg',
    user: User.all.sample
  },
  {
    name:         "#{superlatives.sample} Christmas Tree",
    price_per_day: rand(2..20),
    instruction: "When you choose to decorate your home with a real Christmas tree, there are steps you can take to keep the tree green, healthy and safe throughout the holiday season. If you love the characteristic aroma of an evergreen tree, then you need to take care of it at the source. It's important that you know to appropriately choose and care for your tree so that it can last longer and you can be more environmentally conscious",
    address:      addresses.sample,
    category:     'Conifer',
    remote_photo_url: 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/93/Sri_Lankan_Christmas_tree.jpg/1200px-Sri_Lankan_Christmas_tree.jpg',
    user: User.all.sample
  },
  {
    name:         "#{superlatives.sample} Christmas Tree",
    price_per_day: rand(2..20),
    instruction: "When you choose to decorate your home with a real Christmas tree, there are steps you can take to keep the tree green, healthy and safe throughout the holiday season. If you love the characteristic aroma of an evergreen tree, then you need to take care of it at the source. It's important that you know to appropriately choose and care for your tree so that it can last longer and you can be more environmentally conscious",
    address:      addresses.sample,
    category:     'Conifer',
    remote_photo_url: 'http://setthewed.com/wp-content/uploads/2017/11/yellowrange-and-brown-artificial-christmas-trees-treetopia-burnt-treernamentsburntrnamentsorange-decorations-lighting-in-1024x1280.jpg',
    user: User.all.sample
  },
  {
    name:         "#{superlatives.sample} Christmas Tree",
    price_per_day: rand(2..20),
    instruction: "When you choose to decorate your home with a real Christmas tree, there are steps you can take to keep the tree green, healthy and safe throughout the holiday season. If you love the characteristic aroma of an evergreen tree, then you need to take care of it at the source. It's important that you know to appropriately choose and care for your tree so that it can last longer and you can be more environmentally conscious",
    address:      addresses.sample,
    category:     'Conifer',
    remote_photo_url: 'http://tivergi.com/wp-content/uploads/2017/11/liverpools-christmas-tree-lights-switched-on-liverpool-echo-fix-half-outchristmas-outdoor-shops.jpg',
    user: User.all.sample
  },
  {
    name:         "#{superlatives.sample} Christmas Tree",
    price_per_day: rand(2..20),
    instruction: "When you choose to decorate your home with a real Christmas tree, there are steps you can take to keep the tree green, healthy and safe throughout the holiday season. If you love the characteristic aroma of an evergreen tree, then you need to take care of it at the source. It's important that you know to appropriately choose and care for your tree so that it can last longer and you can be more environmentally conscious",
    address:      addresses.sample,
    category:     'Conifer',
    remote_photo_url: 'http://www.kobigal.com/wp-content/uploads/2017/09/decorated-christmas-trees-2017.jpg',
    user: User.all.sample
  },
  {
    name:         "#{superlatives.sample} Christmas Tree",
    price_per_day: rand(2..20),
    instruction: "When you choose to decorate your home with a real Christmas tree, there are steps you can take to keep the tree green, healthy and safe throughout the holiday season. If you love the characteristic aroma of an evergreen tree, then you need to take care of it at the source. It's important that you know to appropriately choose and care for your tree so that it can last longer and you can be more environmentally conscious",
    address:      addresses.sample,
    category:     'Conifer',
    remote_photo_url: 'http://setthewed.com/wp-content/uploads/2017/11/christmas-tree-ideas-diy-pinterestdiy-topper-pictures-for-decorating.jpeg',
    user: User.all.sample
  },
  {
    name:         "#{superlatives.sample} Christmas Tree",
    price_per_day: rand(2..20),
    instruction: "When you choose to decorate your home with a real Christmas tree, there are steps you can take to keep the tree green, healthy and safe throughout the holiday season. If you love the characteristic aroma of an evergreen tree, then you need to take care of it at the source. It's important that you know to appropriately choose and care for your tree so that it can last longer and you can be more environmentally conscious",
    address:      addresses.sample,
    category:     'Conifer',
    remote_photo_url: 'http://ghk.h-cdn.co/assets/16/32/bellevue-spruce.png',
    user: User.all.sample
  },
  {
    name:         "#{superlatives.sample} Christmas Tree",
    price_per_day: rand(2..20),
    instruction: "When you choose to decorate your home with a real Christmas tree, there are steps you can take to keep the tree green, healthy and safe throughout the holiday season. If you love the characteristic aroma of an evergreen tree, then you need to take care of it at the source. It's important that you know to appropriately choose and care for your tree so that it can last longer and you can be more environmentally conscious",
    address:      addresses.sample,
    category:     'Conifer',
    remote_photo_url: 'http://setthewed.com/wp-content/uploads/2017/11/uncategorized-hinged-pre-lit-artificial-christmas-treeschristmas-trees-walmart-decorated-with-ribbon-4ft-tall-tree-farms-near.jpg',
    user: User.all.sample
  },
  {
    name:         "#{superlatives.sample} Christmas Tree",
    price_per_day: rand(2..20),
    instruction: "When you choose to decorate your home with a real Christmas tree, there are steps you can take to keep the tree green, healthy and safe throughout the holiday season. If you love the characteristic aroma of an evergreen tree, then you need to take care of it at the source. It's important that you know to appropriately choose and care for your tree so that it can last longer and you can be more environmentally conscious",
    address:      addresses.sample,
    category:     'Conifer',
    remote_photo_url: 'http://asset1.marksandspencer.com/is/image/mands/HT_05_T40_8148A_NC_X_EC_0?$PDP_MAXI_ZOOM_NEW$',
    user: User.all.sample
  },
  {
    name:         "#{superlatives.sample} Christmas Tree",
    price_per_day: rand(2..20),
    instruction: "When you choose to decorate your home with a real Christmas tree, there are steps you can take to keep the tree green, healthy and safe throughout the holiday season. If you love the characteristic aroma of an evergreen tree, then you need to take care of it at the source. It's important that you know to appropriately choose and care for your tree so that it can last longer and you can be more environmentally conscious",
    address:      addresses.sample,
    category:     'Conifer',
    remote_photo_url: 'https://i.pinimg.com/originals/fb/09/c7/fb09c7b21144f3fc5de1815ba93393df.jpg',
    user: User.all.sample
  },
  {
    name:         "#{superlatives.sample} Christmas Tree",
    price_per_day: rand(2..20),
    instruction: "When you choose to decorate your home with a real Christmas tree, there are steps you can take to keep the tree green, healthy and safe throughout the holiday season. If you love the characteristic aroma of an evergreen tree, then you need to take care of it at the source. It's important that you know to appropriately choose and care for your tree so that it can last longer and you can be more environmentally conscious",
    address:      addresses.sample,
    category:     'Conifer',
    remote_photo_url: 'https://i.pinimg.com/736x/b5/77/79/b5777926088f598001ae1dc98af428ca--christmas-tree-ribbon-xmas-trees.jpg',
    user: User.all.sample
  },
  {
    name:         "#{superlatives.sample} Christmas Tree",
    price_per_day: rand(2..20),
    instruction: "When you choose to decorate your home with a real Christmas tree, there are steps you can take to keep the tree green, healthy and safe throughout the holiday season. If you love the characteristic aroma of an evergreen tree, then you need to take care of it at the source. It's important that you know to appropriately choose and care for your tree so that it can last longer and you can be more environmentally conscious",
    address:      addresses.sample,
    category:     'Conifer',
    remote_photo_url: 'http://clv.h-cdn.co/assets/15/45/1446758438-741556faae92a9112aefc1272b70094b.jpg',
    user: User.all.sample
  },
  {
    name:         "#{superlatives.sample} Catnip",
    price_per_day: rand(2..20),
    instruction: "Leave care to cat",
    address:      "28 rue de l'Université 75007 paris",
    category:     'Decorative Plant',
    remote_photo_url: 'http://inmybuzz.com/wp-content/uploads/2016/01/chats_drogue_herbe.png',
    user: gelo
  },
  {
    name:         "#{superlatives.sample} Catnip",
    price_per_day: rand(2..20),
    instruction: "Leave care to cat",
    address:      "28 rue de l'Universite 75007 paris",
    category:     'Decorative Plant',
    remote_photo_url: 'http://www.laviedeschats.com/wp-content/uploads/2017/03/herbe-a-chats-786x1024.jpg',
    user: gelo
  },
  {
    name:         "#{superlatives.sample} Snake Plant",
    price_per_day: rand(2..20),
    instruction: "Indirect light is ideal for these plants, along with light waterings that take place only after soil has fully dried",
    address:      addresses.sample,
    category:     'Green Plant',
    remote_photo_url: 'https://i2.wp.com/jenbosen.com/wp-content/uploads/2016/03/snake-plant.jpg',
    user: User.all.sample
  },
  {
    name:         "#{superlatives.sample} Snake Plant",
    price_per_day: rand(2..20),
    instruction: "Indirect light is ideal for these plants, along with light waterings that take place only after soil has fully dried",
    address:      addresses.sample,
    category:     'Green Plant',
    remote_photo_url: 'https://www.lifestorage.com/blog/wp-content/uploads/2016/03/a547ef99-8444-40b5-8e82-9bd2e49263fc_pasted20image200-1.png',
    user: User.all.sample
  },
  {
    name:         "#{superlatives.sample} Cactus",
    price_per_day: rand(2..20),
    instruction: "Thrives in natural light and only have to be watered once a week during the spring and summer and every three weeks during the fall and winter",
    address:      addresses.sample,
    category:     'Cactus',
    remote_photo_url: 'https://studiodiy-wpengine.netdna-ssl.com/wp-content/uploads/2017/04/Cactus-Ice-Cream-Salty-Canary-2-600x900.jpg',
    user: User.all.sample
  },
  {
    name:         "#{superlatives.sample} Cactus",
    price_per_day: rand(2..20),
    instruction: "Thrives in natural light and only have to be watered once a week during the spring and summer and every three weeks during the fall and winter",
    address:      addresses.sample,
    category:     'Cactus',
    remote_photo_url: 'https://images-na.ssl-images-amazon.com/images/I/61kNbaQ3p-L._UL1500_.jpg',
    user: User.all.sample
  },
  {
    name:         "#{superlatives.sample} Calathea",
    price_per_day: rand(2..20),
    instruction: "Go with indirect sunlight and evenly moist soil that's not wet or dry",
    address:      addresses.sample,
    category:     'Green Plant',
    remote_photo_url: 'https://assets.bakker.com/ProductPics/810x978/77361-00-BAKI_20170207071221.jpg',
    user: User.all.sample
  },
  {
    name:         "#{superlatives.sample} Calathea",
    price_per_day: rand(2..20),
    instruction: "Go with indirect sunlight and evenly moist soil that's not wet or dry",
    address:      addresses.sample,
    category:     'Green Plant',
    remote_photo_url: 'https://assets.bakker.com/ProductPics/560x676/86418-00-BAKI_20150112163403.jpg',
    user: User.all.sample
  },
  {
    name:         "#{superlatives.sample} Calathea",
    price_per_day: rand(2..20),
    instruction: "Go with indirect sunlight and evenly moist soil that's not wet or dry",
    address:      addresses.sample,
    category:     'Green Plant',
    remote_photo_url: 'http://i18.servimg.com/u/f18/10/05/51/67/p1010311.jpg',
    user: User.all.sample
  },
  {
    name:         "#{superlatives.sample} Calathea",
    price_per_day: rand(2..20),
    instruction: "Go with indirect sunlight and evenly moist soil that's not wet or dry",
    address:      addresses.sample,
    category:     'Green Plant',
    remote_photo_url: 'https://assets.bakker.com/ProductPics/810x978/86407-00-BAKI_20150112163354.jpg',
    user: User.all.sample
  },
  {
    name:         "#{superlatives.sample} Aloe Plant",
    price_per_day: rand(2..20),
    instruction: "Loves the sun and only requires water once a week, allowing the soil to dry completely in between",
    address:      addresses.sample,
    category:     'Green Plant',
    remote_photo_url: 'https://assets.bakker.com/ProductPics/810x978/96385-02-BAKIE_20150708103851.jpg',
    user: User.all.sample
  },
  {
    name:         "#{superlatives.sample} Aloe Plant",
    price_per_day: rand(2..20),
    instruction: "Loves the sun and only requires water once a week, allowing the soil to dry completely in between",
    address:      addresses.sample,
    category:     'Green Plant',
    remote_photo_url: 'http://casepractice.ro/wp-content/uploads/2015/10/plante-potrivite-pentru-camera-copilului-child-safe-indoor-plants-4.jpg',
    user: User.all.sample
  },
  {
    name:         "#{superlatives.sample} Aloe Plant",
    price_per_day: rand(2..20),
    instruction: "Loves the sun and only requires water once a week, allowing the soil to dry completely in between",
    address:      addresses.sample,
    category:     'Green Plant',
    remote_photo_url: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTs1wPa4RFVDbpz68T_apEMPZuXDeB86gns8ZMULgvBdGQ9yscahA',
    user: User.all.sample
  },
  {
    name:         "#{superlatives.sample} Peace Lilies",
    price_per_day: rand(2..20),
    instruction: "The plant requires medium to low light and only needs to be watered when the top of the soil is dry",
    address:      addresses.sample,
    category:     'Green Plant',
    remote_photo_url: 'http://hgtvhome.sndimg.com/content/dam/images/hgtv/fullset/2010/10/27/10/RX-DK-HTG39403_3-bright-light_s3x4.jpg.rend.hgtvcom.1280.1707.suffix/1400951955590.jpeg',
    user: User.all.sample
  },
  {
    name:         "#{superlatives.sample} Peace Lilies",
    price_per_day: rand(2..20),
    instruction: "The plant requires medium to low light and only needs to be watered when the top of the soil is dry",
    address:      addresses.sample,
    category:     'Green Plant',
    remote_photo_url: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQpwckvVVVkyX6taDogFZ93cLbs09aMrOhNHAPhgwqGIDhHnacv',
    user: User.all.sample
  },
  {
    name:         "#{superlatives.sample} Peace Lilies",
    price_per_day: rand(2..20),
    instruction: "The plant requires medium to low light and only needs to be watered when the top of the soil is dry",
    address:      addresses.sample,
    category:     'Green Plant',
    remote_photo_url: 'http://www.livspace.com/magazine/wp-content/uploads/2016/06/indoor-plants-peace-lily-944x1024.jpg',
    user: User.all.sample
  },
  {
    name:         "#{superlatives.sample} Fiddle Leaf Figs",
    price_per_day: rand(2..20),
    instruction: "Bright, indirect light is ideal. Only water this plant when the top inch of the soil is dry",
    address:      addresses.sample,
    category:     'Shrub',
    remote_photo_url: 'https://static1.squarespace.com/static/56e65dc986db4334801ac47d/5715bd32e32140fb8bf3b748/573c08f562cd941bb7938a2a/1463552307222/Screen+Shot+2016-05-18+at+2.17.10+PM.png?format=1500w',
    user: User.all.sample
  },
  {
    name:         "#{superlatives.sample} Fiddle Leaf Figs",
    price_per_day: rand(2..20),
    instruction: "Bright, indirect light is ideal. Only water this plant when the top inch of the soil is dry",
    address:      addresses.sample,
    category:     'Shrub',
    remote_photo_url: 'https://s-media-cache-ak0.pinimg.com/originals/6c/26/f9/6c26f986682a4b5353e4833f5fc7288f.jpg',
    user: User.all.sample
  },
  {
    name:         "#{superlatives.sample} Spider Plant",
    price_per_day: rand(2..20),
    instruction: "Bright, indirect light and occasional waterings make the spider plant one of the easiest to care for",
    address:      addresses.sample,
    category:     'Green Plant',
    remote_photo_url: 'https://threepsandq.files.wordpress.com/2013/04/blog-april-045.jpg',
    user: User.all.sample
  },
  {
    name:         "#{superlatives.sample} Spider Plant",
    price_per_day: rand(2..20),
    instruction: "Bright, indirect light and occasional waterings make the spider plant one of the easiest to care for",
    address:      addresses.sample,
    category:     'Green Plant',
    remote_photo_url: 'https://i.pinimg.com/736x/3b/7a/17/3b7a1715805999e05ffdb4f416e56054--spider-plants-hanging-spider-plant.jpg',
    user: User.all.sample
  },
  {
    name:         "#{superlatives.sample} Spider Plant",
    price_per_day: rand(2..20),
    instruction: "Bright, indirect light and occasional waterings make the spider plant one of the easiest to care for",
    address:      addresses.sample,
    category:     'Green Plant',
    remote_photo_url: 'https://s-media-cache-ak0.pinimg.com/originals/6c/26/f9/6c26f986682a4b5353e4833f5fc7288f.jpg',
    user: User.all.sample
  },
  {
    name:         "#{superlatives.sample} String of Pearls",
    price_per_day: rand(2..20),
    instruction: "Leave the plant in bright, indirect light with enough water to keep the soil steadily moist",
    address:      addresses.sample,
    category:     'Green Plant',
    remote_photo_url: 'https://s-media-cache-ak0.pinimg.com/originals/21/ec/5b/21ec5bd9ae6bbe9c16c9f3a3d7eb82d2.jpg',
    user: User.all.sample
  },
  {
    name:         "#{superlatives.sample} String of Pearls",
    price_per_day: rand(2..20),
    instruction: "Leave the plant in bright, indirect light with enough water to keep the soil steadily moist",
    address:      addresses.sample,
    category:     'Green Plant',
    remote_photo_url: 'https://s3-us-west-2.amazonaws.com/lia-griffith-media/wp-content/uploads/2017/03/Foam_Clay_String_of_Pearls.jpg',
    user: User.all.sample
  },
  {
    name:         "#{superlatives.sample} Rubber Plants",
    price_per_day: rand(2..20),
    instruction: "The rubber plant requires bright, indirect light. You should only water it when the soil is dry",
    address:      addresses.sample,
    category:     'Green Plant',
    remote_photo_url: 'https://daizdje8zyv90.cloudfront.net/wp-content/uploads/2016/12/Home-Greenery-A-Way-of-Seeing.jpg?x56422',
    user: User.all.sample
  },
  {
    name:         "#{superlatives.sample} Rubber Plants",
    price_per_day: rand(2..20),
    instruction: "The rubber plant requires bright, indirect light. You should only water it when the soil is dry",
    address:      addresses.sample,
    category:     'Green Plant',
    remote_photo_url: 'http://www.theborrowednursery.com.au/wp-content/uploads/2017/05/IMG_7575.jpg',
    user: User.all.sample
  },
]

Plant.create(plants_attributes)

Booking.create!(plant: Plant.last, user: guillaume, status: "accepted", starts_at: DateTime.parse("20/11/2017 17:00"), ends_at: DateTime.parse("27/11/2017 17:00"))
Booking.create!(plant: Plant.first, user: guillaume, status: "accepted", starts_at: DateTime.parse("08/11/2017 17:00"), ends_at: DateTime.parse("11/11/2017 17:00"))
puts 'Finished creating plants!'
