# FactoryBot.define do
# #   sequence :email do |n|
# #     "test#{n}@test.com"
# #   end
 
#   factory :user do
#     first_name { 'Jon' }
#     last_name { 'Snow' }
#     email { generate :email }
#     password { 'abcdef' }
#     password_confirmation { 'abcdef' }
#     phone "555"
#   end
 
#   factory :admin_user, class: "AdminUser" do
#     first_name { 'Admin' }
#     last_name { 'User' }
#     email { generate :email }
#     password { 'abcdef' }
#     password_confirmation { 'abcdef' }
#     phone "555"
#   end
# end