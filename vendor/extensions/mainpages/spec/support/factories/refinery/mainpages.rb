
FactoryGirl.define do
  factory :mainpage, :class => Refinery::Mainpages::Mainpage do
    sequence(:main_headline) { |n| "refinery#{n}" }
  end
end

