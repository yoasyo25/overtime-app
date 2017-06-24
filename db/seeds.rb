@user = User.create(email: "test@test.com",
                    password: "asdfasdf",
                    password_confirmation: "asdfasdf",
                    first_name: "John",
                    last_name: "Snow",
                    phone: "2024685847")

puts "1 User created"

AdminUser.create(email: "admin@user.com",
                password: "asdfasdf",
                password_confirmation: "asdfasdf",
                first_name: "Admin",
                last_name: "User",
                phone: "2024685847")

puts "1 Admin created"

100.times do |post|
  Post.create(date: Date.today, rationale: "#{post} rationale content",
              user_id: @user.id, overtime_request: 2.5)
end

puts "100 posts have been created"

100.times do |audit_log|
  AuditLog.create(user_id: User.last.id,
                  status: 0,
                  start_date: (Date.today - 6.days))
end

puts "100 audit logs have been created"
