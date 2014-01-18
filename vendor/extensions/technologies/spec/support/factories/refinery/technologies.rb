
FactoryGirl.define do
  factory :technology, :class => Refinery::Technologies::Technology do
    sequence(:headline_1) { |n| "refinery#{n}" }
  end
end

