
FactoryGirl.define do
  factory :tamil, :class => Refinery::Tamils::Tamil do
    sequence(:headline) { |n| "refinery#{n}" }
  end
end

