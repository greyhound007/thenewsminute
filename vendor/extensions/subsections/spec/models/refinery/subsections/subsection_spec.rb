require 'spec_helper'

module Refinery
  module Subsections
    describe Subsection do
      describe "validations" do
        subject do
          FactoryGirl.create(:subsection,
          :Topic => "Refinery CMS")
        end

        it { should be_valid }
        its(:errors) { should be_empty }
        its(:Topic) { should == "Refinery CMS" }
      end
    end
  end
end
