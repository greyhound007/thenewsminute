
FactoryGirl.define do
  factory :entertainment, :class => Refinery::Entertainments::Entertainment do
    sequence(:headline_1) { |n| "refinery#{n}" }
  end
end

