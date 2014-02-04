require 'spec_helper'

module Refinery
  module Homepages
    describe Homepage do
      describe "validations" do
        subject do
          FactoryGirl.create(:homepage,
          :main_headline => "Refinery CMS")
        end

        it { should be_valid }
        its(:errors) { should be_empty }
        its(:main_headline) { should == "Refinery CMS" }
      end
    end
  end
end
