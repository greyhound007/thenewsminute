require 'spec_helper'

module Refinery
  module Sports
    describe Sport do
      describe "validations" do
        subject do
          FactoryGirl.create(:sport,
          :headline_1 => "Refinery CMS")
        end

        it { should be_valid }
        its(:errors) { should be_empty }
        its(:headline_1) { should == "Refinery CMS" }
      end
    end
  end
end
