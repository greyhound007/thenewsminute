
FactoryGirl.define do
  factory :headline_2, :class => Refinery::Headline2s::Headline2 do
    sequence(:headline) { |n| "refinery#{n}" }
  end
end

