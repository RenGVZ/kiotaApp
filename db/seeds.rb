LAYOUT = ["1LDK"]
CITY = ["Meguro", "Ebisu", "Shibuya"]
INFO = ["Elegant style", "Modern style", "Close to staion"]

# platform: PLATFORMS.sample

require 'faker'
require "open-uri"

PropertyViewing.destroy_all
Property.destroy_all
User.destroy_all


puts "Creating developer accounts..."
User.create(email:"nii@gmail.com",password:"123456")
User.create(email:"gavin@gmail.com",password:"123456")
User.create(email:"shouko@gmail.com",password:"123456")
User.create(email:"yann@gmail.com",password:"123456")



# property = Property.new(
#       information: "Big room",
#       price: 130000,
#       distance_to_station: 10,
#       pets: true,
#       distance_to_supermarket: 5,
#       age: 2,
#       floor: 1,
#       distance_to_park: 5,
#       cafe_nearby: true,
#       bar_nearby: false,
#       size: 50,
#       layout: "1DK",
#       location: "Roppongi",
#       user: User.create(email: Faker::Internet.email, password: "123456"),
#       deposit: 130000,
#       key_money: 130000,
#       initial_cost: 390000
#       )
#     # file = URI.open("https://www.yuuki-home.co.jp/upload/image/article_1_1619_1578123350.jpg")
#     # property.photos.attach(io: file, filename: "room2.jpg", content_type: 'image/jpg')
#     # property.save!
#     # file = URI.open("https://www.google.com/url?sa=i&url=http%3A%2F%2Fhoap.tokyo%2Fportfolio%2Fshibuya-apartment-401%2F&psig=AOvVaw3e7ZdYQl5xLaVGUTMNubWf&ust=1584093175140000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCOjq24zVlOgCFQAAAAAdAAAAABAL")
#     # property.photos.attach(io: file, filename: "room22.jpg", content_type: 'image/jpg')
#     property.save!

#     puts "Creating properties..."

property = Property.new(
      information: "A apartment with rooftop",
      price: 140000,
      distance_to_station: 9,
      pets: false,
      distance_to_supermarket: 11,
      age: 8,
      floor: 1,
      distance_to_park: 5,
      cafe_nearby: false,
      bar_nearby: true,
      size: 42,
      layout: "1LDK",
      location: "Shibuya",
      user: User.create(email: Faker::Internet.email, password: "123456"),
      deposit: 140000,
      key_money: 140000,
      initial_cost: 420000
      )
    file = URI.open("https://www.yuuki-home.co.jp/upload/image/article_1_916_1499062310.jpg")
    property.photos.attach(io: file, filename: "room1.jpg", content_type: 'image/jpg')
    property.save!
    file = URI.open("https://www.r-store.jp/photo/roominfo/photo/building/101792/101792_01_ip_normal.jpg")
    property.photos.attach(io: file, filename: "room11.jpg", content_type: 'image/jpg')
    property.save!

    puts "Property created"

property = Property.new(
      information: "A one bedroom apartment",
      price: 110000,
      distance_to_station: 20,
      pets: true,
      distance_to_supermarket: 5,
      age: 6,
      floor: 7,
      distance_to_park: 13,
      cafe_nearby: true,
      bar_nearby: false,
      size: 40,
      layout: "1DK",
      location: "Shibuya",
      user: User.create(email: Faker::Internet.email, password: "123456"),
      deposit: 110000,
      key_money: 110000,
      initial_cost: 330000
      )
    file = URI.open("https://i.ytimg.com/vi/BXwDNp2eAvM/maxresdefault.jpg")
    property.photos.attach(io: file, filename: "room3.jpg", content_type: 'image/jpg')
    property.save!
    file = URI.open("https://hoap.tokyo/wp-content/uploads/2017/04/MG_5740.jpg")
    property.photos.attach(io: file, filename: "room33.jpg", content_type: 'image/jpg')
    property.save!

    puts "Property created"

property = Property.new(
      information: "A one bedroom apartment",
      price: 90000,
      distance_to_station: 11,
      pets: false,
      distance_to_supermarket: 12,
      age: 9,
      floor: 1,
      distance_to_park: 12,
      cafe_nearby: true,
      bar_nearby: true,
      size: 43,
      layout: "1DK",
      location: "Shinjuku",
      user: User.create(email: Faker::Internet.email, password: "123456"),
      deposit: 90000,
      key_money: 90000,
      initial_cost: 270000
      )
    file = URI.open("https://apartment-japan.tokyo/rent/wp-content/uploads/2016/01/CIMG1992.jpg")
    property.photos.attach(io: file, filename: "room4.jpg", content_type: 'image/jpg')
    property.save!
    file = URI.open("https://www.r-store.jp/photo/roominfo/photo/building/225800/225800_02_size6.jpg?20200207060301")
    property.photos.attach(io: file, filename: "room44.jpg", content_type: 'image/jpg')
    property.save!

    puts "Property created"

# property = Property.new(
#       information: "A one bedroom apartment",
#       price: 100000,
#       distance_to_station: 5,
#       pets: false,
#       distance_to_supermarket: 10,
#       age: 2,
#       floor: 1,
#       distance_to_park: 10,
#       cafe_nearby: false,
#       bar_nearby: true,
#       size: 50,
#       layout: "1DK",
#       location: "Shibuya",
#       user: User.create(email: Faker::Internet.email, password: "123456"),
#       deposit: 100000,
#       key_money: 100000,
#       initial_cost: 300000
#       )
#     file = URI.open("https://lh3.googleusercontent.com/proxy/oA3jDB7gFGfwvoRDlkDo6ZWgBw0zndC_td6ScWeJ6LGvWAb_LtuqAZl8mQodvlbWcEDpRLmRLpwxD86feePyZddONtT2DTZraOBXyjxjBAr05LEHKJ6VKQQTDtBuPg")
#     property.photos.attach(io: file, filename: "room5.jpg", content_type: 'image/jpg')
#     property.save!
#     file = URI.open("https://tasimages.blob.core.windows.net/uploads/636244132390459811_One_Bedroom_C_Type_2219f1c3-dfdb-4aea-9f58-48210e4cb810.jpg")
#     property.photos.attach(io: file, filename: "room55.jpg", content_type: 'image/jpg')
#     property.save!
   
#     puts "Creating properties..."



#     puts "Creating properties..."

# property = Property.new(
#       information: "A one bedroom apartment",
#       price: 80000,
#       distance_to_station: 15,
#       pets: false,
#       distance_to_supermarket: 10,
#       age: 2,
#       floor: 4,
#       distance_to_park: 10,
#       cafe_nearby: false,
#       bar_nearby: true,
#       size: 35,
#       layout: "1LDK",
#       location: "Meguro",
#       user: User.create(email: Faker::Internet.email, password: "123456"),
#       deposit: 80000,
#       key_money: 80000,
#       initial_cost: 240000
#       )
#     file = URI.open("https://images.es-e-bukken.com/building/0/000/179/125/1962724.jpg")
#     property.photos.attach(io: file, filename: "room7.jpg", content_type: 'image/jpg')
#     property.save!
#     file = URI.open("https://www.zeroapa.com/wp02/wp-content/uploads/2019/06/IMG_9967.jpg")
#     property.photos.attach(io: file, filename: "room77.jpg", content_type: 'image/jpg')
#     property.save!

#     puts "Creating properties..."

# # property = Property.new(
# #       information: "A one bedroom apartment",
# #       price: 70000,
# #       distance_to_station: 15,
# #       pets: false,
# #       distance_to_supermarket: 10,
# #       age: 8,
# #       floor: 4,
# #       distance_to_park: 10,
# #       cafe_nearby: true,
# #       bar_nearby: true,
# #       size: 35,
# #       layout: "1DK",
# #       location: "Roppongi",
# #       user: User.create(email: Faker::Internet.email, password: "123456"),
# #       deposit: 70000,
# #       key_money: 70000,
# #       initial_cost: 210000
# #       )
# #     file = URI.open("https://lh3.googleusercontent.com/proxy/5851ss72mBJ50d4HUHDol0JKLF-ejQ5LwtRcf3YNbOyUd_I97YmMKAKaUizkdPbkOmGZoduXa81_VZvCVzlPd8JqXkg1uDA_R2gt19tUM9TtNNYGcApbHwVcvbomXUY")
# #     property.photos.attach(io: file, filename: "room8.jpg", content_type: 'image/jpg')
# #     property.save!
# #     file = URI.open("https://d1sw4fcdq5we39.cloudfront.net/wp-content/uploads/2018/11/21170950/dcdcd2cd-85cf-4616-ad68-8ca804cf4a70.jpg")
# #     property.photos.attach(io: file, filename: "room88.jpg", content_type: 'image/jpg')
# #     property.save!

# #     puts "Creating properties..."

# property = Property.new(
#       information: "A one bedroom apartment",
#       price: 110000,
#       distance_to_station: 5,
#       pets: false,
#       distance_to_supermarket: 10,
#       age: 0,
#       floor: 4,
#       distance_to_park: 10,
#       cafe_nearby: true,
#       bar_nearby: false,
#       size: 50,
#       layout: "1LDK",
#       location: "Shinjuku",
#       user: User.create(email: Faker::Internet.email, password: "123456"),
#       deposit: 120000,
#       key_money: 0,
#       initial_cost: 240000
#       )
#     file = URI.open("https://s3-ap-northeast-1.amazonaws.com/tpo-web/wp-content/uploads/R0036262.jpg")
#     property.photos.attach(io: file, filename: "room9.jpg", content_type: 'image/jpg')
#     property.save!
#     file = URI.open("https://www.zeroapa.com/wp02/wp-content/uploads/2019/12/IMG_1446.jpg")
#     property.photos.attach(io: file, filename: "room99.jpg", content_type: 'image/jpg')
#     property.save!

#     puts "Creating properties..."

property = Property.new(
      information: "A one bedroom apartment",
      price: 90000,
      distance_to_station: 5,
      pets: true,
      distance_to_supermarket: 5,
      age: 10,
      floor: 1,
      distance_to_park: 5,
      cafe_nearby: true,
      bar_nearby: true,
      size: 50,
      layout: "1DK",
      location: "Shinjuku",
      user: User.create(email: Faker::Internet.email, password: "123456"),
      deposit: 90000,
      key_money: 0,
      initial_cost: 180000
      )
    file = URI.open("https://shootest.jp/wp-content/uploads/2019/07/IMG_002.jpg")
    property.photos.attach(io: file, filename: "room100.jpg", content_type: 'image/jpg')
    property.save!
    file = URI.open("https://odis.homeaway.com/odis/listing/63a6c329-3fd3-42af-a892-4d80467f1c44.c10.jpg")
    property.photos.attach(io: file, filename: "room10.jpg", content_type: 'image/jpg')
    property.save!

    puts "Property created"

puts 'Finished!'
