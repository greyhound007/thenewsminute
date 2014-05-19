
FactoryGirl.define do
  factory :news_section, :class => Refinery::NewsSections::NewsSection do
    sequence(:Main_headline) { |n| "refinery#{n}" }
  end
end

