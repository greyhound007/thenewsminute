
FactoryGirl.define do
  factory :latest, :class => Refinery::Latests::Latest do
    sequence(:headline) { |n| "refinery#{n}" }
  end
end

