
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name: "Septime",
    address: "Rue de Charonne",
    category: "french",
    phone_number: "01 40 20 30 40",
  },
  {
    name: "Vivant",
    address: "Rue des Petites Ecuries",
    category: "french",
    phone_number: "01 40 20 30 40",
  },
  {
    name: "Alicheur",
    address: "Rue Oberkampf",
    category: "french",
    phone_number: "01 40 20 30 40",
  },
  {
    name: "Justine",
    address: "Rue Oberkampf",
    category: "french",
    phone_number: "01 40 20 30 40",
  }
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'
