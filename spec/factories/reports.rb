# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :report do
    user_id 1
    sighting_id 1
    details "MyString"
  end
end
