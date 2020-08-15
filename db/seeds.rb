# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create(signin_name: "user1",display_name: "分大太郎",password: "bundai",password_confirmation: "bundai")

3.times do |i|
    user.posts.create(title: "title #{i}", body: "body #{i}")
end

3.times do |i|
    Post.find(1).comments.create(body: "comment body #{i}")
end

