require 'faker'


puts 'creating seeds'

puts 'creating sizes 🐷🦩'

puts'shoe sizes'
Size.create(size_name: nil, size_number: 4)
Size.create(size_name: nil, size_number: 5)
Size.create(size_name: nil, size_number: 6)
Size.create(size_name: nil, size_number: 7)
Size.create(size_name: nil, size_number: 8)
Size.create(size_name: nil, size_number: 9)
Size.create(size_name: nil, size_number: 10)
Size.create(size_name: nil, size_number: 11)

puts 'clothes sizes'

Size.create(size_name: "extra-small", size_number: nil)
Size.create(size_name: "small", size_number: nil)
Size.create(size_name: "medium", size_number: nil)
Size.create(size_name: "large", size_number: nil)
Size.create(size_name: "extra-large", size_number: nil)

puts 'creating categories 🧥👚👕👖👔👗👙'

Category.create(name: 'Pants', description: "Pants", image: 'https://www.helikon-tex.com/media/catalog/product/cache/6/image/9df78eab33525d08d6e5fb8d27136e95/s/p/sp-pgm-dc-11.jpg')
Category.create(name: 'Shorts', description: "Shorts", image: 'https://www.helikon-tex.com/media/catalog/product/cache/6/image/9df78eab33525d08d6e5fb8d27136e95/s/p/sp-pgm-dc-11.jpg')
Category.create(name: 'Leggings', description: "Leggings", image: 'https://www.helikon-tex.com/media/catalog/product/cache/6/image/9df78eab33525d08d6e5fb8d27136e95/s/p/sp-pgm-dc-11.jpg')
Category.create(name: 'Electronics', description: "Electronics", image: 'https://www.helikon-tex.com/media/catalog/product/cache/6/image/9df78eab33525d08d6e5fb8d27136e95/s/p/sp-pgm-dc-11.jpg')





puts 'creating colors 🌸'
30.times do
    Color.create(name: Faker::Color.color_name, description: Faker::Coffee.notes, hexidecimal: Faker::Color.hex_color)
end

puts 'seedings manufacturers'

30.times do
    Manufacturer.create(name: Faker::Company.name, description: Faker::Company.catch_phrase)
end


puts 'seedings sellers'

30.times do
    Seller.create(name: Faker::Company.name, description: Faker::Company.catch_phrase)
end


50.times do
    Product.create(name: Faker::Coin.name, price: Faker::Number.between(from: 10.0, to: 90.0),
    inventory: Faker::Number.between(from: 5, to: 40), description: Faker::Quote.famous_last_words,
    size_id: Size.ids.sample, color_id: Color.ids.sample, category_id: Category.ids.sample,
    manufacturer_id: Manufacturer.ids.sample, seller_id: Seller.ids.sample)
end