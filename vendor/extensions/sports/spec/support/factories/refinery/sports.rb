
FactoryGirl.define do
  factory :sport, :class => Refinery::Sports::Sport do
    sequence(:Main_headline) { |n| "refinery#{n}" }
  end
end

