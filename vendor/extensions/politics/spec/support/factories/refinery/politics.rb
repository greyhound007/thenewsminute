
FactoryGirl.define do
  factory :politic, :class => Refinery::Politics::Politic do
    sequence(:headline_1) { |n| "refinery#{n}" }
  end
end

