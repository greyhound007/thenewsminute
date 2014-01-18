
FactoryGirl.define do
  factory :homepage, :class => Refinery::Homepages::Homepage do
    sequence(:main_story_headline_1) { |n| "refinery#{n}" }
  end
end

