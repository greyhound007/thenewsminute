
FactoryGirl.define do
  factory :subsection, :class => Refinery::Subsections::Subsection do
    sequence(:Topic) { |n| "refinery#{n}" }
  end
end

