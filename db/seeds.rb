# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(username: 'Furkan', password: 'baturay0')
User.create(username: 'Hasan', password: 'baturay1')
User.create(username: 'Gamze', password: 'baturay2')
User.create(username: 'Beyza', password: 'baturay3')
User.create(username: 'Kevin', password: 'baturay4')
User.create(username: 'Okan', password: 'baturay4')
Message.create(body: 'Trial', user_id:4)
Message.create(body: 'Hello there', user_id:1)
Message.create(body: 'Nice to meet you', user_id:2)
Message.create(body: 'I am here too', user_id:3)
Message.create(body: 'Hi guys', user_id:5)
