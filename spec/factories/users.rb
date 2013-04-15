# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    username "Bob"
    password "a"
    password_confirmation "a"
  end
end
