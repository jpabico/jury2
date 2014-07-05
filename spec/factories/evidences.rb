# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :evidence do
    argument "This is a test argument that is better than all the rest"
    mediatype "written"
    party "user_id"
    users_cases_id 1
  end
end
