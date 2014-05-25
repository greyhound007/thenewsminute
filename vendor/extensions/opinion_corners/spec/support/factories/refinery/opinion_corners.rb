
FactoryGirl.define do
  factory :opinion_corner, :class => Refinery::OpinionCorners::OpinionCorner do
    sequence(:headline) { |n| "refinery#{n}" }
  end
end

