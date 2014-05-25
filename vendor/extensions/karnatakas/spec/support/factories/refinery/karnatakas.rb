
FactoryGirl.define do
  factory :karnataka, :class => Refinery::Karnatakas::Karnataka do
    sequence(:headline) { |n| "refinery#{n}" }
  end
end

