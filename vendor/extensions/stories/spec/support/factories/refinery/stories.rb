
FactoryGirl.define do
  factory :story, :class => Refinery::Stories::Story do
    sequence(:Main_headline) { |n| "refinery#{n}" }
  end
end

