
FactoryGirl.define do
  factory :elephant, :class => Refinery::Elephants::Elephant do
    sequence(:headline) { |n| "refinery#{n}" }
  end
end

