# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create!(name: "Example User",
  email: "example@railstutorial.org",
  password:"123456",
  password_confirmation: "123456",admin: true)
99.times do |n|
name = Faker::Name.name
email = "example-#{n+1}@railstutorial.org"
password = "123456"
User.create!(name: name,
email: email,
password:
password,
password_confirmation: password,
activated: true)
end
users = User.order(:created_at).take(6)
50.times do
content = Faker::Lorem.sentence(5)
users.each { |user| user.microposts.create!(content: content) }
end
users = User.all
user = users.first
#我关注的人
following = users[2..10]
#关注我的人
followers = users[3..15]
following.each { |followed| user.follow(followed) }
followers.each { |follower| follower.follow(user) }