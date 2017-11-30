# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ location: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Booking.destroy_all
Prestation.destroy_all
User.destroy_all

p "creating users"
  user1 = User.create(email: 'rachel@mail.com', age: 32, gender: "Female" , password: "password", first_name: 'Rachel', last_name: "Markle", picture: "http://res.cloudinary.com/dfosxgid7/image/upload/v1511969122/zz12gka0dadceixpw0a7.jpg")
  user1.save
  user2 = User.create(email:'harry@mail.com' , age: 29, gender: "Male", password: "password", first_name: "Prince", last_name: "Harry")
  user3 = User.create(email:'anonyme@mail.com' , age: 30, gender: "Male" , password: "password", first_name: 'James', last_name: "Jonson")

p "users - done"

p "creating prestations"
  #url1 = "http://res.cloudinary.com/dfosxgid7/image/upload/v1511969122/zz12gka0dadceixpw0a7.jpg"
  prestation1 = Prestation.new(job: "wife", description: "Hello i am an american actress, I am able to be whoever you want me to be wife queen princess lawyer you name it i could be the wife of your dreams so go ahead just book me I'll be the perfect girl for you", price: 43, location: "London")
  prestation1.user = user1
  # prestation1.remote_photo_url = url1
  prestation1.save!
  #url2 = "http://res.cloudinary.com/dp7vcrxlv/image/upload/v1512041036/neonbrand-381372_hozxae.jpg"
  prestation2 = Prestation.new( job: "Prince", description: "Hello I am prince harry if you are intrested in renting me for a couple of days to prove to your parents that you have what it takes to date a prince im the one for you. Don't worry i'll will not show them my willy", price: 66, location: "London")
  prestation2.user = user2
  #prestation2.remote_photo_url = url2
  prestation2.save!
  #url3 = "http://res.cloudinary.com/dfosxgid7/image/upload/v1511969167/xjdfehdzzgnavjzagz4e.jpg"
  prestation3 = Prestation.new(job: "farmer", description: "", price: 113, location: "Secret log cabin")
  prestation3.user = user3
  #prestation3.remote_photo_url = url3
  prestation3.save!
  #url4 = "http://res.cloudinary.com/dfosxgid7/image/upload/v1511969167/xjdfehdzzgnavjzagz4e.jpg"
  prestation4 = Prestation.new(job: "farmer", description: "", price: 211, location: "Arty Loft")
  prestation4.user = user3
  #prestation4.remote_photo_url = url4
  prestation4.save!
  #url5 = "http://res.cloudinary.com/dfosxgid7/image/upload/v1511969167/xjdfehdzzgnavjzagz4e.jpg"
  prestation5 = Prestation.new(job: "farmer", description: "cool during the warmer summer days.", price: 98, location: "Cozy Chalet")
  prestation5.user = user3
  #prestation5.remote_photo_url = url5
  prestation5.save!
  #url6 = "http://res.cloudinary.com/dfosxgid7/image/upload/v1511969167/xjdfehdzzgnavjzagz4e.jpg"
  prestation6 = Prestation.new( job: "farmer", description: "", price: 72, location: "Mediterranean Mansion")
  prestation6.user = user3
  #prestation6.remote_photo_url = url6
  prestation6.save!
  #url7 = "http://res.cloudinary.com/dfosxgid7/image/upload/v1511969167/xjdfehdzzgnavjzagz4e.jpg"
  prestation7 = Prestation.new(job: "farmer", description: "", price: 80, location: "Modern Luxury")
  prestation7.user = user3
  #prestation7.remote_photo_url = url7
  prestation7.save!
  #url8 = "http://res.cloudinary.com/dfosxgid7/image/upload/v1511969167/xjdfehdzzgnavjzagz4e.jpg"
  prestation8 = Prestation.new( job: "farmer", description: "", price: 110, location: "Southern Charm")
  prestation8.user = user3
  #prestation8.remote_photo_url = url8
  prestation8.save!
p "flats - done"
p "creating bookings"
  booking1 = Booking.new(user_id: 2, prestation_id: 1, description: "Hello i would really need you, because my grandmother is soon to die, and she really wants me to have a wife since my big brother William is married and has two kids. However i'm not at all ready, i'd would really appreciate your help for a couple of weeks.", date: "2017-12-1", end_date: "2017-12-31", location: "London")
  booking2 = Booking.new(user_id: 1, prestation_id: 1, description: "2", date: "18/01/2016", end_date: "20/02/2016", location: "London")
  booking3 = Booking.new(user_id: 1, prestation_id: 1, description: "4", date: "02/02/2016", end_date: "06/02/2016", location: "London")
  booking1.save
  booking2.save
  booking3.save
p "bookings - done"
