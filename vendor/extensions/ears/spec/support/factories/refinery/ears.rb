
FactoryGirl.define do
  factory :ear, :class => Refinery::Ears::Ear do
    sequence(:headline) { |n| "refinery#{n}" }
  end
end

