# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    user_name "user_name"
    email "test@test.com"
    password_hash "test"
  end
end
