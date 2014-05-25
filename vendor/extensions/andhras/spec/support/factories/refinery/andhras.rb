
FactoryGirl.define do
  factory :andhra, :class => Refinery::Andhras::Andhra do
    sequence(:headline) { |n| "refinery#{n}" }
  end
end

