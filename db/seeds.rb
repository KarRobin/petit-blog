# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
require 'pry'

rng = Random.new


10.times do
  user = User.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email)
end

10.times do
  article = Article.create!(title: Faker::Lorem.sentence, content: Faker::Lorem.paragraph, user_id: User.all.ids.sample, category_id: Category.all.ids.sample)
end

binding.pry

5.times do
  category = Category.create(name: Faker::Book.genre)
end

15.times do
  comment = Comment.create!(content: Faker::ChuckNorris.fact, user_id: User.all.ids.sample, article_id: Article.all.ids.sample)
  like = Like.create!(user_id: User.all.ids.sample, article_id: Article.all.ids.sample)
end

=end
