puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         "Chez le jap",
    address:      '7 rue de Tokyo, Marseille',
    phone_number: '0491678986',
    category:     'japanese'
  },
  {
    name:         "Pizza Pino",
    address:      'Little Italy, Marseille',
    phone_number: '049164566',
    category:     'italian'
  },
   {
    name:         "L'entrecote",
    address:      '23 rue paradis, Marseille',
    phone_number: '049134566',
    category:     'french'
  }
]
Restaurant.create!(restaurants_attributes)

puts 'Creating reviews...'
@restaurant = Restaurant.all
reviews_attributes = [
  {
    content:      "C'etait super bon !",
    rating:       5,
    restaurant: @restaurant.sample
  },
  {
    content:      "Bof",
    rating:       2,
    restaurant: @restaurant.sample
  },
  {
    content:      "Moyen",
    rating:       3,
    restaurant: @restaurant.sample
  },
  {
    content:      "Amazing",
    rating:       5,
    restaurant: @restaurant.sample
  },
  {
    content:      "Great !",
    rating:       4,
    restaurant: @restaurant.sample
  },
  {
    content:      "Ok",
    rating:       3,
    restaurant: @restaurant.sample
  },
  {
    content:      "C'etait super!",
    rating:       5,
    restaurant: @restaurant.sample
  },
]
Review.create!(reviews_attributes)
puts 'Finished!'
