@user = User.create(email: "test@test.com", password: "asdfasdf",
password_confirmation: "asdfasdf", first_name: "John",
last_name: "Snow")

puts "1 User created"

AdminUser.create(email: "admin@user.com", password: "asdfasdf",
password_confirmation: "asdfasdf", first_name: "Admin",
last_name: "User")

puts "1 Admin created"

100.times do |post|
  Post.create(date: Date.today, rationale: "#{post} rationale content",
              user_id: @user.id)
end

puts "100 posts have been created"
