@user=User.create(email:'test@test.com', 
                  password:'abcdef', 
                  password_confirmation:'abcdef', 
                  first_name:'jon',
                  last_name: 'snow',
                  phone:"8587535399")
puts "1 User created"

AdminUser.create(email:'admin@test.com', 
                 password:'abcdef', 
                 password_confirmation:'abcdef', 
                 first_name:'name',
                 last_name: 'snow',
                 phone:"8587535399")

puts "1 AdminUser created"

100.times do |post|
  Post.create!(date: Date.today, rationale: "#{post} rationale content", user_id: @user.id)

end
puts "100 posts have been created"
