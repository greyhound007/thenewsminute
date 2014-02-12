
FactoryGirl.define do
  factory :landing_page, :class => Refinery::LandingPages::LandingPage do
    sequence(:Homepage_Headline) { |n| "refinery#{n}" }
  end
end

