
FactoryGirl.define do
  factory :politic, :class => Refinery::Politics::Politic do
    sequence(:Main_headline) { |n| "refinery#{n}" }
  end
end

