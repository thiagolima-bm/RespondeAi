# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :chapter do
    number "MyString"
    title "MyString"
    book_id 1
  end
end
