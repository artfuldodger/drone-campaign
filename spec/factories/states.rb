FactoryGirl.define do
  factory :state do
    sequence(:name) { |n| "State Name #{n}" }
    sequence(:abbreviation) { |n| "SN#{n}" }
  end
end
