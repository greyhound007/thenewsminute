require 'spec_helper'

module Refinery
  module BasePageRedirects
    describe BasePageRedirect do
      describe "validations" do
        subject do
          FactoryGirl.create(:base_page_redirect,
          :Homepage_Headline => "Refinery CMS")
        end

        it { should be_valid }
        its(:errors) { should be_empty }
        its(:Homepage_Headline) { should == "Refinery CMS" }
      end
    end
  end
end
