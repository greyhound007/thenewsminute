require 'spec_helper'

module Refinery
  module Lives
    describe Life do
      describe "validations" do
        subject do
          FactoryGirl.create(:life,
          :Main_headline => "Refinery CMS")
        end

        it { should be_valid }
        its(:errors) { should be_empty }
        its(:Main_headline) { should == "Refinery CMS" }
      end
    end
  end
end
