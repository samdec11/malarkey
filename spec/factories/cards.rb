# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :card do
    num 1
    suit "MyString"
    image "MyString"
  end
end