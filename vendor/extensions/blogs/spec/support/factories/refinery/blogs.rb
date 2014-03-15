
FactoryGirl.define do
  factory :blog, :class => Refinery::Blogs::Blog do
    sequence(:headline) { |n| "refinery#{n}" }
  end
end

