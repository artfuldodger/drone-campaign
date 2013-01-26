FactoryGirl.define do
  factory :representative do
    sequence(:name) { |n| "Rep Name #{n}" }
    association :state
  end
end
