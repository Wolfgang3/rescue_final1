# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :directsighting do
    species "MyString"
    status false
    city_name "MyString"
    user_name "MyString"
    email "MyString"
    phno "MyString"
    latitude 1.5
    longitude 1.5
  end
end
