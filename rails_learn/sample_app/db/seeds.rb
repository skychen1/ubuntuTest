# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create!(name: "wh",
  email: "wh@qq.com",
  password:"123456",password_confirmation: "123456",
  admin: true,
  activated: true,
  activated_at: Time.zone.now)
99.times do |n|
  name=Faker::Name.name
  email = "#{n+1}@qq.com"
  password="123456"
  User.create!(name: name,email: email,
    password: password,
    password_confirmation: password,
    activated: true,
    activated_at: Time.zone.now)
end


  users=User.order(:created_at).take(1)
  50.times do |i|
    content=Faker::Lorem.sentence(5)
    users.each {
      |user|
      user.microposts.create!(content:content)
    }
  end
  users=User.all
  user=users.first
  following=users[2..50]
  followers=users[3..40]
  following.each{
    |followed|
    user.follow(followed)
  }
  followers.each{
    |follower|
    follower.follow(user)
  }
