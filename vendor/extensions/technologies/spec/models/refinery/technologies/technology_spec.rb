require 'spec_helper'

module Refinery
  module Technologies
    describe Technology do
      describe "validations" do
        subject do
          FactoryGirl.create(:technology,
          :headline_1 => "Refinery CMS")
        end

        it { should be_valid }
        its(:errors) { should be_empty }
        its(:headline_1) { should == "Refinery CMS" }
      end
    end
  end
end
