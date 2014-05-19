
FactoryGirl.define do
  factory :opinion_mainpage, :class => Refinery::OpinionMainpages::OpinionMainpage do
    sequence(:headline) { |n| "refinery#{n}" }
  end
end

