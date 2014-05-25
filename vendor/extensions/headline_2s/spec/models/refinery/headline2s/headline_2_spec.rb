require 'spec_helper'

module Refinery
  module Headline2s
    describe Headline2 do
      describe "validations" do
        subject do
          FactoryGirl.create(:headline_2,
          :headline => "Refinery CMS")
        end

        it { should be_valid }
        its(:errors) { should be_empty }
        its(:headline) { should == "Refinery CMS" }
      end
    end
  end
end
