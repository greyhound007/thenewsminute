
FactoryGirl.define do
  factory :editors_pick, :class => Refinery::EditorsPicks::EditorsPick do
    sequence(:headline) { |n| "refinery#{n}" }
  end
end

