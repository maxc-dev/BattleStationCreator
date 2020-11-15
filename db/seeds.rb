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
      name: 'NVIDIA'
    },
    {
      name: 'Asus'
    },
    {
      name: 'Gigabyte'
    },
    {
      name: 'Intel'
    },
    {
      name: 'AMD'
    },
    {
      name: 'MSI'
    },
    {
      name: 'Corsair'
    },
    {
      name: 'Lian Li'
    },
    {
      name: 'Cooler Master'
    }
  ]
)
