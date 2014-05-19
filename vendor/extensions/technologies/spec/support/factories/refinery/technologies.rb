
FactoryGirl.define do
  factory :technology, :class => Refinery::Technologies::Technology do
    sequence(:Main_headline) { |n| "refinery#{n}" }
  end
end

