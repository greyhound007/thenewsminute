
FactoryGirl.define do
  factory :news_story, :class => Refinery::NewsStories::NewsStory do
    sequence(:headline_1) { |n| "refinery#{n}" }
  end
end

