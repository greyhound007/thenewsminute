
FactoryGirl.define do
  factory :side_headline, :class => Refinery::SideHeadlines::SideHeadline do
    sequence(:headline) { |n| "refinery#{n}" }
  end
end

