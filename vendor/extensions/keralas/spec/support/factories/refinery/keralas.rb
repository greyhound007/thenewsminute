
FactoryGirl.define do
  factory :kerala, :class => Refinery::Keralas::Kerala do
    sequence(:headline) { |n| "refinery#{n}" }
  end
end

