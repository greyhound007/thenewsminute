
FactoryGirl.define do
  factory :opinion, :class => Refinery::Opinions::Opinion do
    sequence(:headline) { |n| "refinery#{n}" }
  end
end

