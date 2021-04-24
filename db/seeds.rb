puts 'Cleaning database'

Flat.destroy_all

puts 'Creating new flats'

4.times do
  Flat.create!(
    name: Faker::Mountain.name,
    address: Faker::Address.country,
    description: Faker::Quotes::Shakespeare.hamlet_quote,
    price_per_night: rand(50..100),
    number_of_guests: rand(1..8)
  )
end

puts 'finished'
