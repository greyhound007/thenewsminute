
FactoryGirl.define do
  factory :world, :class => Refinery::Worlds::World do
    sequence(:headline_1) { |n| "refinery#{n}" }
  end
end

