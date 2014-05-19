
FactoryGirl.define do
  factory :finance, :class => Refinery::Finances::Finance do
    sequence(:Main_headline) { |n| "refinery#{n}" }
  end
end

