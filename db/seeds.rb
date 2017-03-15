# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# example user
dummy_image = "#{Rails.root}/public/images/gutty.png"
User.create!(
  name:  "Example User",
  email: "example@railstutorial.org",
  password:              "foobar",
  password_confirmation: "foobar",
  image: File.open(dummy_image)
)

# users
IMAGES_NUM = 10
99.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  file_path = "#{Rails.root}/public/images/sample/users/#{rand(1..IMAGES_NUM)}.png"
  User.create!(
    name:                  name,
    email:                 email,
    password:              password,
    password_confirmation: password,
    image:                 File.open(file_path),
  )
end

# items
users = User.first(50) << User.find(1)
5.times do
  users.each do |user|
    name = Faker::Food.ingredient
    file_path = "#{Rails.root}/public/images/sample/items/#{rand(1..IMAGES_NUM)}.png"

    item = user.items.create!(
      name:  name,
      image: File.open(file_path),
    )
  end
end

# relationships
users = User.all
user = User.find(2)
following = users[3..20]
followers = users[3..30]
following.each { |followed| user.follow(followed) }
followers.each { |follower| follower.follow(user) }

user = User.find(1)
following = users[2..40]
followers = users[2..50]
following.each { |followed| user.follow(followed) }
followers.each { |follower| follower.follow(user) }


# kasikaris
friends = user.friends.first(5)
other_user = User.find(2)
status = 1

friends.each.with_index(1) do |friend, i|
  status = 1 - status
  Kasikari.create!(
    item_id:      user.items[i].id,
    from_user_id: user.id,
    to_user_id:   friend.id,
    start_date:   Date.today,
    end_date:     Date.today + i,
    status:       status,
  )
end
friends.each.with_index(1) do |friend, i|
  status = 1 - status
  Kasikari.create!(
    item_id:      friend.items.first.id,
    from_user_id: friend.id,
    to_user_id:   user.id,
    start_date:   Date.today,
    end_date:     Date.today + i,
    status:       status,
  )
end
friends.last(9).each.with_index(1) do |friend, i|
  Kasikari.create!(
    item_id:      other_user.items.first.id,
    from_user_id: other_user.id,
    to_user_id:   friend.id,
    start_date:   Date.today,
    end_date:     Date.today + i,
  )
end

