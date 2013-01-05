# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :solution_step do
    number "MyString"
    body "MyText"
    exercise_id 1
  end
end
