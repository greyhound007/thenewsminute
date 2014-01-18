
FactoryGirl.define do
  factory :sport, :class => Refinery::Sports::Sport do
    sequence(:headline_1) { |n| "refinery#{n}" }
  end
end

