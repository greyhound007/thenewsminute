require 'spec_helper'

module Refinery
  module Entertainments
    describe Entertainment do
      describe "validations" do
        subject do
          FactoryGirl.create(:entertainment,
          :headline_1 => "Refinery CMS")
        end

        it { should be_valid }
        its(:errors) { should be_empty }
        its(:headline_1) { should == "Refinery CMS" }
      end
    end
  end
end
