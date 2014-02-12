
FactoryGirl.define do
  factory :base_page_redirect, :class => Refinery::BasePageRedirects::BasePageRedirect do
    sequence(:Homepage_Headline) { |n| "refinery#{n}" }
  end
end

