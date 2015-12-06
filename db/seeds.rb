# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# Breakfast
MenuItem.create!(name: "Com tam", 
                 description: Faker::Lorem.paragraph,
                 price: 30000,
                 section: "Breakfast",
                 image_url: "http://i.imgur.com/i56DnMc.jpg")

MenuItem.create!(name: "Pho bo", 
                 description: Faker::Lorem.paragraph,
                 price: 60000,
                 section: "Breakfast",
                 image_url: "http://i.imgur.com/clzEZcz.jpg")

MenuItem.create!(name: "Pho ga", 
                 description: Faker::Lorem.paragraph,
                 price: 40000,
                 section: "Breakfast",
                 image_url: "http://i.imgur.com/TYW7iMn.jpg")

MenuItem.create!(name: "Banh mi", 
                 description: Faker::Lorem.paragraph,
                 price: 20000,
                 section: "Breakfast",
                 image_url: "http://i.imgur.com/uN5i2Os.jpg")

MenuItem.create!(name: "Bun bo", 
                 description: Faker::Lorem.paragraph,
                 price: 50000,
                 section: "Breakfast",
                 image_url: "http://i.imgur.com/8UhkH0K.jpg?1")

# Lunch
MenuItem.create!(name: "Thit kho tau", 
                 description: Faker::Lorem.paragraph,
                 price: 50000,
                 section: "Lunch",
                 image_url: "http://toinayangi.vn/wp-content/uploads/2014/09/thit-kho-tau1-300x224.jpg")

MenuItem.create!(name: "Ca thu sot ca", 
                 description: Faker::Lorem.paragraph,
                 price: 50000,
                 section: "Lunch",
                 image_url: "http://toinayangi.vn/wp-content/uploads/2015/11/t11.jpg")

MenuItem.create!(name: "Suon xao chua ngot", 
                 description: Faker::Lorem.paragraph,
                 price: 50000,
                 section: "Lunch",
                 image_url: "http://toinayangi.vn/wp-content/uploads/2015/11/s22.jpg")

MenuItem.create!(name: "Thit ba chi chien gion", 
                 description: Faker::Lorem.paragraph,
                 price: 50000,
                 section: "Lunch",
                 image_url: "http://toinayangi.vn/wp-content/uploads/2015/11/t2.jpg")

MenuItem.create!(name: "Suon kho cu cai", 
                 description: Faker::Lorem.paragraph,
                 price: 50000,
                 section: "Lunch",
                 image_url: "http://toinayangi.vn/wp-content/uploads/2015/11/s1.jpg")

# Dinner
MenuItem.create!(name: "Rau muong xao thit bo", 
                 description: Faker::Lorem.paragraph,
                 price: 50000,
                 section: "Dinner",
                 image_url: "http://toinayangi.vn/wp-content/uploads/2014/09/rau-muong-xao-thit-bo.jpg")

MenuItem.create!(name: "Ca kho to", 
                 description: Faker::Lorem.paragraph,
                 price: 50000,
                 section: "Dinner",
                 image_url: "http://toinayangi.vn/wp-content/uploads/2014/08/ca-kho-to.gif")

MenuItem.create!(name: "Canh ga chien nuoc mam", 
                 description: Faker::Lorem.paragraph,
                 price: 50000,
                 section: "Dinner",
                 image_url: "http://quynhthoa.net/wp-content/uploads/2015/05/canh-ga-chien-nuoc-mam.jpg")

MenuItem.create!(name: "Banh xeo", 
                 description: Faker::Lorem.paragraph,
                 price: 50000,
                 section: "Dinner",
                 image_url: "http://toinayangi.vn/wp-content/uploads/2014/08/banh-xeo.jpg")

MenuItem.create!(name: "Ca trung kho to", 
                 description: Faker::Lorem.paragraph,
                 price: 50000,
                 section: "Dinner",
                 image_url: "http://toinayangi.vn/wp-content/uploads/2014/08/ca-kho-3.jpg")


# Drink
MenuItem.create!(name: "Soda chanh duong", 
                 description: Faker::Lorem.paragraph,
                 price: 30000,
                 section: "Drink",
                 image_url: "http://cdn.gardenbetty.com/wp-content/uploads/2012/02/2012-02-22-11.jpg?cc1b74")

MenuItem.create!(name: "Pepsi", 
                 description: Faker::Lorem.paragraph,
                 price: 20000,
                 section: "Drink",
                 image_url: "http://www.bmstores.co.uk/images/hpcProductImage/imgFull/2059-Pepsi-330ml-Can.jpg")

MenuItem.create!(name: "7 Up", 
                 description: Faker::Lorem.paragraph,
                 price: 20000,
                 section: "Drink",
                 image_url: "http://onlinecashandcarry.co.uk/media/catalog/product/cache/1/thumbnail/9df78eab33525d08d6e5fb8d27136e95/7/u/7up_330ml.jpg")

MenuItem.create!(name: "Tra sua tran chau", 
                 description: Faker::Lorem.paragraph,
                 price: 30000,
                 section: "Drink",
                 image_url: "http://xcard.vn/content/upload/place/1(6).jpg")

MenuItem.create!(name: "Sting dau", 
                 description: Faker::Lorem.paragraph,
                 price: 20000,
                 section: "Drink",
                 image_url: "http://www.hangnoitro.com/wp-content/uploads/2013/04/sting.jpg")


# seeds reviews
MenuItem.all.each do |mi|
  rand(5).times do 
    mi.reviews << Review.new( comment: Faker::Lorem.paragraph, username: Faker::Name.name, star: Faker::Number.between(1, 5))
  end
end