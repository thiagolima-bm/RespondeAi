# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    provider "MyString"
    uid "MyString"
    name "MyString"
    email "MyString"
    image_url "MyString"
    admin false
    oauth_token "MyString"
    oauth_expires_at "2013-01-17 17:31:48"
  end
end
