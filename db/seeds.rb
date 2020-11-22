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
      name: 'Motherboard',
      description: 'Connects all the components of a computer together.'
    },
    {
      name: 'Memory',
      abbrv: 'RAM',
      description: 'Holds random data which the computer needs to perform calculations.'
    },
    {
      name: 'CPU Cooler',
      description: 'Cools the processor using water or air.'
    },
    {
      name: 'Case',
      description: 'Holds the build together.'
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
      name: 'Fans',
      description: 'Additional fans to control the air flow in your case.',
      compulsory: false
    },
    {
      name: 'Lighting',
      abbrv: 'RGB',
      description: 'Additional RGB lighting components.',
      compulsory: false
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
      name: 'Gigabyte' # 2
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
      manufacturer_id: 3,
      name: 'i5 10500',
      price: 183.99,
      power: 85
    },
    {
      category_id: 1,
      manufacturer_id: 3,
      name: 'i5 9500',
      price: 179.99,
      power: 85
    },
    {
      category_id: 1,
      manufacturer_id: 3,
      name: 'i5 8500',
      price: 173.99,
      power: 85
    },
    {
      category_id: 1,
      manufacturer_id: 3,
      name: 'i7 10700',
      price: 283.99,
      power: 95
    },
    {
      category_id: 1,
      manufacturer_id: 3,
      name: 'i7 9700',
      price: 279.99,
      power: 95
    },
    {
      category_id: 1,
      manufacturer_id: 3,
      name: 'i7 9700K',
      price: 283.99,
      power: 95
    },
    {
      category_id: 1,
      manufacturer_id: 3,
      name: 'i7 8700',
      price: 273.99,
      power: 95
    },
    {
      category_id: 1,
      manufacturer_id: 3,
      name: 'i9 10900',
      price: 424.99,
      power: 105
    },
    {
      category_id: 1,
      manufacturer_id: 3,
      name: 'i9 9900',
      price: 319.99,
      power: 105
    },
    {
      category_id: 1,
      manufacturer_id: 3,
      name: 'i9 9900K',
      price: 339.99,
      power: 105
    },                      # processors - amd
    {
      category_id: 1,
      manufacturer_id: 4,
      name: 'Ryzen 5 5600X',
      price: 269.99,
      power: 65
    },
    {
      category_id: 1,
      manufacturer_id: 4,
      name: 'Ryzen 7 5800X',
      price: 399.99,
      power: 105
    },
    {
      category_id: 1,
      manufacturer_id: 4,
      name: 'Ryzen 5 5900X',
      price: 499.99,
      power: 105
    },
    {
      category_id: 1,
      manufacturer_id: 4,
      name: 'Ryzen 7 5950X',
      price: 699.99,
      power: 105
    }
  ]
)
