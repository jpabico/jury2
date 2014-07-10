FactoryGirl.define do

  factory :ballot do
    case_id 1
    user_id 1
    role "plaintiff"
  end

  factory :case do
    title "A test case title"
    summary "rabble rabble rabble"
    winner "bob"
    status "active'"
  end

  factory :comment do

  end

  factory :evidence do
    argument "This is a test argument that is better than all the rest"
    cases_user_id 1
  end

  factory :user do
    user_name "user_name"
    email "test@test.com"
    password_hash "test"
  end

  # factory :users_case do

  # end

  # factory :vote do

  # end

end

