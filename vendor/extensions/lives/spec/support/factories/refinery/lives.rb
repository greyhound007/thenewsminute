
FactoryGirl.define do
  factory :life, :class => Refinery::Lives::Life do
    sequence(:Main_headline) { |n| "refinery#{n}" }
  end
end

