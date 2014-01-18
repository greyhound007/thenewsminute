require 'spec_helper'

module Refinery
  module Politics
    describe Politic do
      describe "validations" do
        subject do
          FactoryGirl.create(:politic,
          :headline_1 => "Refinery CMS")
        end

        it { should be_valid }
        its(:errors) { should be_empty }
        its(:headline_1) { should == "Refinery CMS" }
      end
    end
  end
end
