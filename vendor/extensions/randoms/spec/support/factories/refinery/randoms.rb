
FactoryGirl.define do
  factory :random, :class => Refinery::Randoms::Random do
    sequence(:headline) { |n| "refinery#{n}" }
  end
end

