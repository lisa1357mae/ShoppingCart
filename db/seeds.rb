# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.create ([
  {title: 'Guitar', description: 'Fender', image_url: 'https://pbs.twimg.com/profile_images/783743036043866112/XeOiqdgp.jpg', price: 200},
  {title: 'Piano', description: 'Steinway', image_url: 'http://steinway.co.uk/wp-content/uploads/2016/03/grand-piano.jpg', price: 200},
  {title: 'Drums', description: 'Pearl', image_url: 'https://upload.wikimedia.org/wikipedia/commons/e/ea/Pearl_drum_logo.png', price: 200}])

  User.create([
    {id:1, first: 'Lisa', last: 'Mae', email: 'lisamae@example.com', password: 'test'},
    {id:2, first: 'Tom', last: 'Petty', email: 'tpetty@example.com', password: 'test'},
    {id:3, first: 'Michael', last: 'Jackson', email: 'mj@example.com', password: 'test'}
    ])
