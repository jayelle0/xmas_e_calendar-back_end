# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create(name: 'Bob', email: "bob@gmail.com", username:'bob123', password: 'bob123')



Calendar.create(name: "testing", user_id: 1)


date = 0
25.times do
    date+=1
    Day.create(calendar_id: 1, date: date)
end 