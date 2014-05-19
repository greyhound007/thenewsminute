
FactoryGirl.define do
  factory :entertainment, :class => Refinery::Entertainments::Entertainment do
    sequence(:Main_headline) { |n| "refinery#{n}" }
  end
end

