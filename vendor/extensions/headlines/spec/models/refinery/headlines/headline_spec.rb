require 'spec_helper'

module Refinery
  module Headlines
    describe Headline do
      describe "validations" do
        subject do
          FactoryGirl.create(:headline,
          :main_headline => "Refinery CMS")
        end

        it { should be_valid }
        its(:errors) { should be_empty }
        its(:main_headline) { should == "Refinery CMS" }
      end
    end
  end
end
