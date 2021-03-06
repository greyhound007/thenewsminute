require 'spec_helper'

module Refinery
  module Finances
    describe Finance do
      describe "validations" do
        subject do
          FactoryGirl.create(:finance,
          :Main_headline => "Refinery CMS")
        end

        it { should be_valid }
        its(:errors) { should be_empty }
        its(:Main_headline) { should == "Refinery CMS" }
      end
    end
  end
end
