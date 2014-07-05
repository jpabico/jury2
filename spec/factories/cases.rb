# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :case do
    title "A test case title"
    status "inactive"
  end
end
