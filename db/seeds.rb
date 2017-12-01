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
url_rachel = "http://res.cloudinary.com/dfosxgid7/image/upload/v1511969122/zz12gka0dadceixpw0a7.jpg"
url_harry = "http://res.cloudinary.com/dfosxgid7/image/upload/v1511969104/pcjqwwqohxsrxb9vamdv.jpg"
url_daenarys = "http://res.cloudinary.com/dfosxgid7/image/upload/v1511969131/blf7pz3rahkwvztin4zr.jpg"
url_kid = "http://res.cloudinary.com/dfosxgid7/image/upload/v1511969146/gfqotzthqwast6u8bdb9.jpg"
url_justin = "http://res.cloudinary.com/dfosxgid7/image/upload/v1511969154/pmbnttowzzpxkkknnvbf.jpg"
url_jess = "http://res.cloudinary.com/dfosxgid7/image/upload/v1511969160/mregs9hvvjhbacmbm3o5.jpg"
url_tommy = "http://res.cloudinary.com/dfosxgid7/image/upload/v1511969167/xjdfehdzzgnavjzagz4e.jpg"
url_dom = "http://res.cloudinary.com/dfosxgid7/image/upload/v1512127014/zjfnhctaglwqrhsbkj2n.jpg"
url_chuck = "http://res.cloudinary.com/dfosxgid7/image/upload/v1512134909/bpzyb0mw9aby1chm053a.jpg"

user_rachel = User.new(email: 'rachel@mail.com', age: 32, gender: "Female" , password: "password", first_name: 'Rachel', last_name: "Markle")
user_rachel.remote_picture_url = url_rachel
user_rachel.save

user_harry = User.new(email:'harry@mail.com' , age: 29, gender: "Male", password: "password", first_name: "Harry", last_name: "King")
user_harry.remote_picture_url = url_harry
user_harry.save

user_daenarys = User.new(email:'daenarys@mail.com' , age: 27, gender: "Female" , password: "password", first_name: 'Daenarys', last_name: "Dragon")
user_daenarys.remote_picture_url = url_daenarys
user_daenarys.save

user_kid = User.new(email:'kid@mail.com' , age: 12, gender: "Male", password: "password", first_name: "Alan", last_name: "Bobby")
user_kid.remote_picture_url = url_kid
user_kid.save

user_justin = User.new(email:'justin@mail.com' , age: 35, gender: "Male", password: "password", first_name: "Justin", last_name: "Timberlake")
user_justin.remote_picture_url = url_justin
user_justin.save

user_jess = User.new(email:'jess@mail.com' , age: 32, gender: "Female" , password: "password", first_name: 'Jessica', last_name: "Alba")
user_jess.remote_picture_url = url_jess
user_jess.save

user_tommy = User.new(email:'tommy@mail.com' , age: 22, gender: "Male", password: "password", first_name: "Tommy", last_name: "Chouchou")
user_tommy.remote_picture_url = url_tommy
user_tommy.save

user_dom = User.new(email:'dominique@mail.com' , age: 65, gender: "Male", password: "password", first_name: "Dominique", last_name: "Strau")
user_dom.remote_picture_url = url_dom
user_dom.save

user_chuck = User.new(email:'chuck@mail.com' , age: 100, gender: "Male", password: "password", first_name: "Chucke", last_name: "Noris")
user_chuck.remote_picture_url = url_chuck
user_chuck.save

p "users - done"

p "creating prestations"
  #url1 = "http://res.cloudinary.com/dfosxgid7/image/upload/v1511969122/zz12gka0dadceixpw0a7.jpg"
  prestation_rachel = Prestation.new(job: "Wife", description: "Hello i am an american actress, I am able to be whoever you want me to be wife queen princess lawyer you name it i could be the wife of your dreams so go ahead just book me I'll be the perfect girl for you", price: 5000, location: "hyde park")
  prestation_rachel.user = user_rachel
  prestation_rachel.save!

  prestation_daenarys = Prestation.new(job: "Wife", description: "Hey everyone I’m Princess Daenerys Targaryen, also known as Daenerys Stormborn, i’m one of the last confirmed members of House Targaryen, along with my older brother Viserys, who refers to me as Dany. I’m the youngest child of King Aerys II Targaryen and his sister-wife, Queen Rhaella. If you rent me you could also rent my three dragons xoxo", price: 43, location: "covent garden")
  prestation_daenarys.user = user_daenarys
  prestation_daenarys.save!

  prestation_kid = Prestation.new(job: "Kid", description: "Hello i am an american actress, I am able to be whoever you want me to be wife queen princess lawyer you name it i could be the wife of your dreams so go ahead just book me I'll be the perfect girl for you", price: 150, location: "earl's court")
  prestation_kid.user = user_kid
  prestation_kid.save!

  prestation_justin = Prestation.new(job: "Singer", description: "Hey I’m Justin in 2002, i decided to pursue a solo career, debuting with the hit song “Like I Love You.” Later that year, i released my first solo album, Justified, which sold more than 7 million copies worldwide. I received two Grammy Awards in 2004 for Best Pop Vocal Album and Best Male Pop Vocal Performance. The wins came on the heels of a controversial Super Bowl performance with Janet Jackson in which I tore off a portion of Jackson’s costume revealing her bare breast. That was pretty awesome, so if you want to rent me go ahead.", price: 79, location: "clapham junction")
  prestation_justin.user = user_justin
  prestation_justin.save!

  prestation_jess = Prestation.new(job: "Wife", description: "Hey I’m Jessica Marie Alba is an American actress and businesswoman. She has won various awards for her acting, including the Choice Actress Teen Choice Award and Saturn Award for Best Actress on Television, and a Golden Globe nomination for her lead role in the television series Dark Angel.", price: 99, location: "south kensington")
  prestation_jess.user = user_jess
  prestation_jess.save!

  prestation_tommy = Prestation.new(job: "Farmer", description: "Hello i am an american actress, I am able to be whoever you want me to be wife queen princess lawyer you name it i could be the wife of your dreams so go ahead just book me I'll be the perfect girl for you", price: 210, location: "camdem")
  prestation_tommy.user = user_tommy
  prestation_tommy.save!

  prestation_dom = Prestation.new(job: "Farmer", description: "Hello i am an american actress, I am able to be whoever you want me to be wife queen princess lawyer you name it i could be the wife of your dreams so go ahead just book me I'll be the perfect girl for you", price: 1000, location: "king's cross")
  prestation_dom.user = user_dom
  prestation_dom.save!

  prestation_chuck = Prestation.new(job: "Farmer", description: "Hello i am an american actress, I am able to be whoever you want me to be wife queen princess lawyer you name it i could be the wife of your dreams so go ahead just book me I'll be the perfect girl for you", price: 65, location: "buckingham palace")
  prestation_chuck.user = user_chuck
  prestation_chuck.save!



p "prestations - done"
p "creating bookings"
  booking1 = Booking.new(user_id: 2, prestation_id: 2, description: "Hello i would really need you, because my grandmother is soon to die, and she really wants me to have a wife since my big brother William is married and has two kids. However i'm not at all ready, i'd would really appreciate your help for a couple of weeks.", date: "2017-12-1", end_date: "2017-12-31", location: "London")
  booking2 = Booking.new(user_id: 2, prestation_id: 5, description: "2", date: "18/01/2016", end_date: "20/02/2016", location: "London")
  booking1.save
  booking2.save
p "bookings - done"
