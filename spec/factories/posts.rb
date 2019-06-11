FactoryBot.define do
  factory :post do
    date { Date.today }
    rationale { "Some Rationale" }
    user
  end
 
  factory :second_post, class: "Post" do
    date { Date.yesterday }
    rationale { "Some more content" }
    user
  end
end

FactoryBot.define do
  sequence :email do |n|
    "test#{n}@example.com"
  end
 
  factory :user do
    first_name { 'John' }
    last_name { 'Snow' }
    email { generate :email }
    password { 'asdfasdf' }
    password_confirmation { 'asdfasdf' }
  end
 
  factory :admin_user, class: "AdminUser" do
    first_name { 'Admin' }
    last_name { 'User' }
    email { generate :email }
      password { 'asdfasdf' }
    password_confirmation { 'asdfasdf' }
  end
end