# encoding: utf-8
require "spec_helper"

describe Refinery do
  describe "OpinionMainpages" do
    describe "Admin" do
      describe "opinion_mainpages" do
        refinery_login_with :refinery_user

        describe "opinion_mainpages list" do
          before do
            FactoryGirl.create(:opinion_mainpage, :headline => "UniqueTitleOne")
            FactoryGirl.create(:opinion_mainpage, :headline => "UniqueTitleTwo")
          end

          it "shows two items" do
            visit refinery.opinion_mainpages_admin_opinion_mainpages_path
            page.should have_content("UniqueTitleOne")
            page.should have_content("UniqueTitleTwo")
          end
        end

        describe "create" do
          before do
            visit refinery.opinion_mainpages_admin_opinion_mainpages_path

            click_link "Add New Opinion Mainpage"
          end

          context "valid data" do
            it "should succeed" do
              fill_in "Headline", :with => "This is a test of the first string field"
              click_button "Save"

              page.should have_content("'This is a test of the first string field' was successfully added.")
              Refinery::OpinionMainpages::OpinionMainpage.count.should == 1
            end
          end

          context "invalid data" do
            it "should fail" do
              click_button "Save"

              page.should have_content("Headline can't be blank")
              Refinery::OpinionMainpages::OpinionMainpage.count.should == 0
            end
          end

          context "duplicate" do
            before { FactoryGirl.create(:opinion_mainpage, :headline => "UniqueTitle") }

            it "should fail" do
              visit refinery.opinion_mainpages_admin_opinion_mainpages_path

              click_link "Add New Opinion Mainpage"

              fill_in "Headline", :with => "UniqueTitle"
              click_button "Save"

              page.should have_content("There were problems")
              Refinery::OpinionMainpages::OpinionMainpage.count.should == 1
            end
          end

        end

        describe "edit" do
          before { FactoryGirl.create(:opinion_mainpage, :headline => "A headline") }

          it "should succeed" do
            visit refinery.opinion_mainpages_admin_opinion_mainpages_path

            within ".actions" do
              click_link "Edit this opinion mainpage"
            end

            fill_in "Headline", :with => "A different headline"
            click_button "Save"

            page.should have_content("'A different headline' was successfully updated.")
            page.should have_no_content("A headline")
          end
        end

        describe "destroy" do
          before { FactoryGirl.create(:opinion_mainpage, :headline => "UniqueTitleOne") }

          it "should succeed" do
            visit refinery.opinion_mainpages_admin_opinion_mainpages_path

            click_link "Remove this opinion mainpage forever"

            page.should have_content("'UniqueTitleOne' was successfully removed.")
            Refinery::OpinionMainpages::OpinionMainpage.count.should == 0
          end
        end

      end
    end
  end
end
