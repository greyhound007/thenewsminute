
FactoryGirl.define do
  factory :homepage, :class => Refinery::Homepages::Homepage do
    sequence(:main_headline) { |n| "refinery#{n}" }
  end
end

