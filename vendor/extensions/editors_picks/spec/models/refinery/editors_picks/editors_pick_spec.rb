require 'spec_helper'

module Refinery
  module EditorsPicks
    describe EditorsPick do
      describe "validations" do
        subject do
          FactoryGirl.create(:editors_pick,
          :headline => "Refinery CMS")
        end

        it { should be_valid }
        its(:errors) { should be_empty }
        its(:headline) { should == "Refinery CMS" }
      end
    end
  end
end
