# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :signature do
    name "MyString"
    email "MyString"
    newsletter false
  end
end
