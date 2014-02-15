
FactoryGirl.define do
  factory :redirect, :class => Refinery::Redirects::Redirect do
    sequence(:Homepage_Headline) { |n| "refinery#{n}" }
  end
end

