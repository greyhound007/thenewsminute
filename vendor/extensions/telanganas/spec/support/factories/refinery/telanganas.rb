
FactoryGirl.define do
  factory :telangana, :class => Refinery::Telanganas::Telangana do
    sequence(:headline) { |n| "refinery#{n}" }
  end
end

