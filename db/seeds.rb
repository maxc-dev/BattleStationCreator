# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Category.create(
  [
    {
      name: 'Processor',
      abbrv: 'CPU',
      description: 'The brain of the computer that does all the calculations.'
    },
    {
      name: 'Graphics Card',
      abbrv: 'GPU',
      description: 'Processes the graphics and outputs it on your display.'
    },
    {
      name: 'Memory',
      abbrv: 'RAM',
      description: 'Holds random data which the computer needs to perform calculations.'
    },
    {
      name: 'Power Supply',
      abbrv: 'PSU',
      description: 'Provides power to the system.'
    },
    {
      name: 'Storage',
      abbrv: 'SSD',
      description: 'Stores all the data about your computer.'
    },
    {
      name: 'Lighting',
      abbrv: 'RGB',
      description: 'Additional RGB lighting components.',
      compulsory: false
    },
    {
      name: 'Motherboard',
      abbrv: 'MOBO',
      description: 'Connects all the components of a computer together.'
    },
    {
      name: 'Fans',
      abbrv: 'FANS',
      description: 'Additional fans to control the air flow in your case.',
      compulsory: false
    },
    {
      name: 'CPU Cooler',
      abbrv: 'AIO',
      description: 'Cools the processor using water or air.'
    },
    {
      name: 'Case',
      abbrv: 'ATX',
      description: 'Holds the build together.'
    }
  ]
)

Manufacturer.create(
  [
    {
      name: 'NVIDIA' # 0
    },
    {
      name: 'Asus' # 1
    },
    {
      name: 'Samsung' # 2
    },
    {
      name: 'Intel' # 3
    },
    {
      name: 'AMD' # 4
    },
    {
      name: 'MSI' # 5
    },
    {
      name: 'Corsair' # 6
    },
    {
      name: 'Lian Li' # 7
    },
    {
      name: 'Cooler Master' # 8
    }
  ]
)

Part.create(
  [ # processors - intel
    {
      category_id: 1,
      manufacturer_id: 4,
      name: 'i7 10700K',
      price: 283.99,
      power: 95
    },
    {
      category_id: 1,
      manufacturer_id: 4,
      name: 'i7 9700K',
      price: 283.99,
      power: 95
    },
    {
      category_id: 1,
      manufacturer_id: 4,
      name: 'i9 10900K',
      price: 424.99,
      power: 105
    },
    {
      category_id: 1,
      manufacturer_id: 4,
      name: 'i9 9900K',
      price: 319.99,
      power: 105
    }, # processors - amd
    {
      category_id: 1,
      manufacturer_id: 5,
      name: 'Ryzen 5 5600X',
      price: 269.99,
      power: 65
    },
    {
      category_id: 1,
      manufacturer_id: 5,
      name: 'Ryzen 7 5800X',
      price: 399.99,
      power: 105
    },
    {
      category_id: 1,
      manufacturer_id: 5,
      name: 'Ryzen 9 5900X',
      price: 499.99,
      power: 105
    },
    {
      category_id: 1,
      manufacturer_id: 5,
      name: 'Ryzen 9 5950X',
      price: 699.99,
      power: 105
    }, #  graphics cards - nvidia
    {
      category_id: 2,
      manufacturer_id: 1,
      name: 'RTX 3090',
      price: 1399.99,
      power: 350
    },
    {
      category_id: 2,
      manufacturer_id: 1,
      name: 'RTX 3080',
      price: 699.99,
      power: 320
    },
    {
      category_id: 2,
      manufacturer_id: 1,
      name: 'RTX 3070',
      price: 699.99,
      power: 220
    },
    {
      category_id: 2,
      manufacturer_id: 1,
      name: 'RTX 2080Ti',
      price: 1199.99,
      power: 250
    },
    {
      category_id: 2,
      manufacturer_id: 1,
      name: 'Titan RTX',
      price: 2499.99,
      power: 250
    },
    {
      category_id: 2,
      manufacturer_id: 1,
      name: 'RTX 2080 Super',
      price: 699.99,
      power: 250
    }, # graphics cards - amd
    {
      category_id: 2,
      manufacturer_id: 5,
      name: 'Radeon RX 6900 XT',
      price: 999.99,
      power: 300
    },
    {
      category_id: 2,
      manufacturer_id: 5,
      name: 'Radeon RX 6800 XT',
      price: 649.99,
      power: 300
    },
    {
      category_id: 2,
      manufacturer_id: 5,
      name: 'Radeon RX 6800',
      price: 579.99,
      power: 250
    },
    {
      category_id: 2,
      manufacturer_id: 5,
      name: 'Radeon RX 5700 XT',
      price: 399.99,
      power: 225
    },
    {
      category_id: 2,
      manufacturer_id: 5,
      name: 'Radeon RX 5700',
      price: 349.99,
      power: 180
    }, # memory - corsair
    {
      category_id: 3,
      manufacturer_id: 7,
      name: 'Vengeance RGB PRO 16GB',
      price: 99.99,
      power: 95
    },
    {
      category_id: 3,
      manufacturer_id: 7,
      name: 'Vengeance 16GB',
      price: 79.99,
      power: 95
    },                  # psu - corsair
    {
      category_id: 4,
      manufacturer_id: 7,
      name: 'HX850',
      price: 129.99,
      power: -850
    },
    {
      category_id: 4,
      manufacturer_id: 7,
      name: 'RM750x',
      price: 119.99,
      power: -750
    },
    {
      category_id: 4,
      manufacturer_id: 7,
      name: 'RM650x',
      price: 109.99,
      power: -650
    },
    {
      category_id: 4,
      manufacturer_id: 2,
      name: 'ROG Thor 850W',
      price: 199.99,
      power: -850
    },              # storage - samsung
    {
      category_id: 5,
      manufacturer_id: 3,
      name: '970 EVO Plus 1TB',
      price: 149.99,
      power: 30
    },
    {
      category_id: 5,
      manufacturer_id: 3,
      name: '970 EVO 1TB',
      price: 139.99,
      power: 30
    },
    {
      category_id: 5,
      manufacturer_id: 3,
      name: '860 EVO 1TB',
      price: 119.99,
      power: 30
    },
    {
      category_id: 5,
      manufacturer_id: 3,
      name: '860 EVO 2TB',
      price: 189.99,
      power: 30
    },
    {
      category_id: 5,
      manufacturer_id: 3,
      name: '860 PRO 2TB',
      price: 339.99,
      power: 40
    },                  #lighting - lian li
    {
      category_id: 6,
      manufacturer_id: 8,
      name: 'Strimer Plus RGB 8Pin',
      price: 39.99,
      power: 10
    },
    {
      category_id: 6,
      manufacturer_id: 8,
      name: 'Strimer Plus RGB 24Pin',
      price: 49.99,
      power: 10
    },
    {               #lighting corsair
      category_id: 6,
      manufacturer_id: 7,
      name: 'Lighting Node Pro RGB',
      price: 49.99,
      power: 20
    },
    { # motherboards - msi
      category_id: 7,
      manufacturer_id: 6,
      name: 'MPG Gaming Plus',
      price: 119.99,
      power: 95
    },
    {
      category_id: 7,
      manufacturer_id: 6,
      name: 'MPG Gaming Pro Carbon',
      price: 199.99,
      power: 95
    },
    {
      category_id: 7,
      manufacturer_id: 6,
      name: 'MPG Gaming Pro Carbon AC',
      price: 219.99,
      power: 95
    }, # motherboards - asus
    {
      category_id: 7,
      manufacturer_id: 2,
      name: 'Prime',
      price: 136.99,
      power: 95
    },
    {
      category_id: 7,
      manufacturer_id: 2,
      name: 'ROG Strix F Gaming',
      price: 214.99,
      power: 95
    },              # fans - corsair
    {
      category_id: 8,
      manufacturer_id: 7,
      name: '120mm Dual Light Loop RGB',
      price: 24.99,
      power: 15
    },
    {
      category_id: 8,
      manufacturer_id: 7,
      name: 'AF120 Air Series',
      price: 38.99,
      power: 40
    },
    {           #fans cooler master
      category_id: 8,
      manufacturer_id: 9,
      name: 'MasterFan MF120',
      price: 49.99,
      power: 50
    }, # cooler - corsair
    {
      category_id: 9,
      manufacturer_id: 7,
      name: 'H150i ELITE CAPELLIX',
      price: 214.99,
      power: 105
    },
    {
      category_id: 9,
      manufacturer_id: 7,
      name: 'H100i PRO XT',
      price: 114.99,
      power: 95
    },
    {
      category_id: 9,
      manufacturer_id: 7,
      name: 'Hydro 100i RGB Platinum',
      price: 124.99,
      power: 95
    }, # cooler - msi
    {
      category_id: 9,
      manufacturer_id: 6,
      name: 'CORELIQUID 240R',
      price: 119.99,
      power: 95
    },
    {
      category_id: 9,
      manufacturer_id: 6,
      name: 'CORELIQUID 360R',
      price: 149.99,
      power: 105
    },          #cooler cooler master
    {
      category_id: 9,
      manufacturer_id: 9,
      name: 'MasterLiquid ML120L',
      price: 59.99,
      power: 85
    },          #cases - cooler master
    {
      category_id: 10,
      manufacturer_id: 9,
      name: 'MasterCase H500',
      price: 144.99,
      power: 0
    },
    {
      category_id: 10,
      manufacturer_id: 9,
      name: 'MasterBox TD500',
      price: 154.99,
      power: 0
    },
    {
      category_id: 10,
      manufacturer_id: 9,
      name: 'MasterBox MB320',
      price: 144.99,
      power: 0
    },          #cases corsair
    {
      category_id: 10,
      manufacturer_id: 7,
      name: 'iCUE 220T',
      price: 92.99,
      power: 0
    },
    {
      category_id: 10,
      manufacturer_id: 7,
      name: 'iCUE 465X',
      price: 109.99,
      power: 0
    },
    {
      category_id: 10,
      manufacturer_id: 8,
      name: 'O11 Dynamic XL',
      price: 129.99,
      power: 0
    },
    {
      category_id: 10,
      manufacturer_id: 6,
      name: 'SEKIRA 100R',
      price: 119.99,
      power: 0
    },
    {
      category_id: 10,
      manufacturer_id: 6,
      name: 'VAMPIRIC 010',
      price: 119.99,
      power: 0
    },
    {
      category_id: 10,
      manufacturer_id: 2,
      name: 'ROG Strix Helios',
      price: 269.99,
      power: 0
    }
  ]
)
