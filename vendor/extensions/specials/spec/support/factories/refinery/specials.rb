
FactoryGirl.define do
  factory :special, :class => Refinery::Specials::Special do
    sequence(:headline) { |n| "refinery#{n}" }
  end
end

