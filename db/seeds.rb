# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create!(username: "Erll", email: "eatbrains@undead.com", password: "password")

30.times do
  question = Question.create!(title: Faker::ChuckNorris.fact, body: Faker::Markdown.random)
end
