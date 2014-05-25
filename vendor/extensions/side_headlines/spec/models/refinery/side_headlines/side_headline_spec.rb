require 'spec_helper'

module Refinery
  module SideHeadlines
    describe SideHeadline do
      describe "validations" do
        subject do
          FactoryGirl.create(:side_headline,
          :headline => "Refinery CMS")
        end

        it { should be_valid }
        its(:errors) { should be_empty }
        its(:headline) { should == "Refinery CMS" }
      end
    end
  end
end
