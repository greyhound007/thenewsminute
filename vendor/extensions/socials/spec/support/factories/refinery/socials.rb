
FactoryGirl.define do
  factory :social, :class => Refinery::Socials::Social do
    sequence(:Main_headline) { |n| "refinery#{n}" }
  end
end

