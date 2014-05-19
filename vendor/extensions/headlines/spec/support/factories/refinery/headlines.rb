
FactoryGirl.define do
  factory :headline, :class => Refinery::Headlines::Headline do
    sequence(:main_headline) { |n| "refinery#{n}" }
  end
end

