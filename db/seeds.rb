# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Comic.create(title: "Sandman vs. Sandwitch", image: "sandman.jpg")
Comic.create(title: "I love stars soooo much", image: "stars.png")
Comic.create(title: "It's corn!", image: "corny.png")

User.create(name: "Sam Jones", email: "sam@test.com", password: "password", password_confirmation: "password")
User.create(name: "Jane Doe", email: "jane@test.com", password: "password", password_confirmation: "password")


Comment.create(user_id: 1, comic_id: 1, comment: "I love this!")
Comment.create(user_id: 1, comic_id: 3, comment: "Corny as a Southern summer!")
Comment.create(user_id: 2, comic_id: 2, comment: "I don't like this, needs more ... stars? ")