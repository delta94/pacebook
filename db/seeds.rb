# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Post.destroy_all

user1 = User.create!(email: "jyjseong@gmail.com", password: "123456", first_name: "june", last_name: "seong", birth_date: DateTime.new(1993,6,25), gender: "F", school: "App Academy", work: "App Academy", bio: "Hello World!", city: "Flushing", state: "New York")
user2 = User.create!(email: "koba@gmail.com", password: "123456", first_name: "koba", last_name: "inu", birth_date: DateTime.new(2019,7,5), gender: "M", school: "App Academy", bio: "Woof!", city: "New York", state: "New York" )
user3 = User.create!(email: "ken@gmail.com", password: "123456", first_name: "ken", last_name: "ting", birth_date: DateTime.new(1993,9,15), gender: "M")
user4 = User.create!(email: "hae@gmail.com", password: "123456", first_name: "haejun", last_name: "chung", birth_date: DateTime.new(1992,2,10), gender: "M")
user5 = User.create!(email: "christina@gmail.com", password: "123456", first_name: "christina", last_name: "hulee", birth_date: DateTime.new(1991,1,1), gender: "F")

Post.create!(body: "Initial post.", user_id: user1.id)
Post.create!(body: "Woof! Woof!", user_id: user2.id)
Post.create!(body: "I love Koba.", user_id: user3.id)
Post.create!(body: "I am Haejun.", user_id: user4.id)
Post.create!(body: "Tik Tok.", user_id: user5.id)
Post.create!(body: "Hello World!", user_id: user1.id)