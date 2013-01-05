# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :book do
    title "MyString"
    author "MyString"
    edition "MyString"
    publisher "MyString"
    isbn10 "MyString"
    isbn13 "MyString"
    description "MyText"
  end
end
