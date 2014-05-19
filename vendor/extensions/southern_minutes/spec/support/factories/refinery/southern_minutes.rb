
FactoryGirl.define do
  factory :southern_minute, :class => Refinery::SouthernMinutes::SouthernMinute do
    sequence(:headline) { |n| "refinery#{n}" }
  end
end

