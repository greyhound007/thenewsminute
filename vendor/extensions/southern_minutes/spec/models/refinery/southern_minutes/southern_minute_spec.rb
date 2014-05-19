require 'spec_helper'

module Refinery
  module SouthernMinutes
    describe SouthernMinute do
      describe "validations" do
        subject do
          FactoryGirl.create(:southern_minute,
          :headline => "Refinery CMS")
        end

        it { should be_valid }
        its(:errors) { should be_empty }
        its(:headline) { should == "Refinery CMS" }
      end
    end
  end
end
