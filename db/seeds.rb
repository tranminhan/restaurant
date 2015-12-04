# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# Breakfast
MenuItem.create!(name: "Com tam (Broken Rice)", 
                 description: "Broken Rice",
                 price: 30000,
                 section: "Breakfast",
                 image_url: "http://i.imgur.com/i56DnMc.jpg")

MenuItem.create!(name: "Pho bo", 
                 description: "Beef noodle",
                 price: 60000,
                 section: "Breakfast",
                 image_url: "http://i.imgur.com/clzEZcz.jpg")

MenuItem.create!(name: "Pho ga", 
                 description: "Chicken noodle",
                 price: 40000,
                 section: "Breakfast",
                 image_url: "http://i.imgur.com/TYW7iMn.jpg")

MenuItem.create!(name: "Banh mi", 
                 description: "Bread",
                 price: 20000,
                 section: "Breakfast",
                 image_url: "http://i.imgur.com/uN5i2Os.jpg")

MenuItem.create!(name: "Bun bo", 
                 description: "Beef noodle",
                 price: 50000,
                 section: "Breakfast",
                 image_url: "http://i.imgur.com/8UhkH0K.jpg?1")

# Lunch
MenuItem.create!(name: "Thit kho tau", 
                 description: "Thit kho tau",
                 price: 50000,
                 section: "Lunch",
                 image_url: "http://toinayangi.vn/wp-content/uploads/2014/09/thit-kho-tau1-300x224.jpg")

MenuItem.create!(name: "Ca thu sot ca", 
                 description: "Ca thu sot ca",
                 price: 50000,
                 section: "Lunch",
                 image_url: "http://toinayangi.vn/wp-content/uploads/2015/11/t11.jpg")

MenuItem.create!(name: "Suon xao chua ngot", 
                 description: "Suon xao chua ngot",
                 price: 50000,
                 section: "Lunch",
                 image_url: "http://toinayangi.vn/wp-content/uploads/2015/11/s22.jpg")

MenuItem.create!(name: "Thit ba chi chien gion", 
                 description: "Thit ba chi chien gion",
                 price: 50000,
                 section: "Lunch",
                 image_url: "http://toinayangi.vn/wp-content/uploads/2015/11/t2.jpg")

MenuItem.create!(name: "Suon kho cu cai", 
                 description: "Suon kho cu cai",
                 price: 50000,
                 section: "Lunch",
                 image_url: "http://toinayangi.vn/wp-content/uploads/2015/11/s1.jpg")

# Dinner
MenuItem.create!(name: "Rau muong xao thit bo", 
                 description: "Rau muong xao thit bo",
                 price: 50000,
                 section: "Dinner",
                 image_url: "http://toinayangi.vn/wp-content/uploads/2014/09/rau-muong-xao-thit-bo.jpg")

MenuItem.create!(name: "Ca kho to", 
                 description: "Ca kho to",
                 price: 50000,
                 section: "Dinner",
                 image_url: "http://toinayangi.vn/wp-content/uploads/2014/08/ca-kho-to.gif")

MenuItem.create!(name: "Canh ga chien nuoc mam", 
                 description: "Canh ga chien nuoc mam",
                 price: 50000,
                 section: "Dinner",
                 image_url: "http://quynhthoa.net/wp-content/uploads/2015/05/canh-ga-chien-nuoc-mam.jpg")

MenuItem.create!(name: "Banh xeo", 
                 description: "Banh xeo",
                 price: 50000,
                 section: "Dinner",
                 image_url: "http://toinayangi.vn/wp-content/uploads/2014/08/banh-xeo.jpg")

MenuItem.create!(name: "Ca trung kho to", 
                 description: "Ca trung kho to",
                 price: 50000,
                 section: "Dinner",
                 image_url: "http://toinayangi.vn/wp-content/uploads/2014/08/ca-kho-3.jpg")


# Drink
MenuItem.create!(name: "Soda chanh duong", 
                 description: "Soda chanh duong",
                 price: 30000,
                 section: "Drink",
                 image_url: "http://cdn.gardenbetty.com/wp-content/uploads/2012/02/2012-02-22-11.jpg?cc1b74")

MenuItem.create!(name: "Pepsi", 
                 description: "Pepsi",
                 price: 20000,
                 section: "Drink",
                 image_url: "http://www.bmstores.co.uk/images/hpcProductImage/imgFull/2059-Pepsi-330ml-Can.jpg")

MenuItem.create!(name: "7 Up", 
                 description: "7 Up",
                 price: 20000,
                 section: "Drink",
                 image_url: "http://onlinecashandcarry.co.uk/media/catalog/product/cache/1/thumbnail/9df78eab33525d08d6e5fb8d27136e95/7/u/7up_330ml.jpg")

MenuItem.create!(name: "Tra sua tran chau", 
                 description: "Tra sua tran chau",
                 price: 30000,
                 section: "Drink",
                 image_url: "http://xcard.vn/content/upload/place/1(6).jpg")

MenuItem.create!(name: "Sting dau", 
                 description: "Sting dau",
                 price: 20000,
                 section: "Drink",
                 image_url: "http://www.hangnoitro.com/wp-content/uploads/2013/04/sting.jpg")