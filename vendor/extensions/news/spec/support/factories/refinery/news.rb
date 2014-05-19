
FactoryGirl.define do
  factory :new, :class => Refinery::News::New do
    sequence(:Main_headline) { |n| "refinery#{n}" }
  end
end

