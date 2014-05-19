
FactoryGirl.define do
  factory :world, :class => Refinery::Worlds::World do
    sequence(:Main_headline) { |n| "refinery#{n}" }
  end
end

