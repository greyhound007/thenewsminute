require 'spec_helper'

module Refinery
  module Politics
    describe Politic do
      describe "validations" do
        subject do
          FactoryGirl.create(:politic,
          :Main_headline => "Refinery CMS")
        end

        it { should be_valid }
        its(:errors) { should be_empty }
        its(:Main_headline) { should == "Refinery CMS" }
      end
    end
  end
end
