# encoding: utf-8
require "spec_helper"

describe Refinery do
  describe "SideHeadlines" do
    describe "Admin" do
      describe "side_headlines" do
        refinery_login_with :refinery_user

        describe "side_headlines list" do
          before do
            FactoryGirl.create(:side_headline, :headline => "UniqueTitleOne")
            FactoryGirl.create(:side_headline, :headline => "UniqueTitleTwo")
          end

          it "shows two items" do
            visit refinery.side_headlines_admin_side_headlines_path
            page.should have_content("UniqueTitleOne")
            page.should have_content("UniqueTitleTwo")
          end
        end

        describe "create" do
          before do
            visit refinery.side_headlines_admin_side_headlines_path

            click_link "Add New Side Headline"
          end

          context "valid data" do
            it "should succeed" do
              fill_in "Headline", :with => "This is a test of the first string field"
              click_button "Save"

              page.should have_content("'This is a test of the first string field' was successfully added.")
              Refinery::SideHeadlines::SideHeadline.count.should == 1
            end
          end

          context "invalid data" do
            it "should fail" do
              click_button "Save"

              page.should have_content("Headline can't be blank")
              Refinery::SideHeadlines::SideHeadline.count.should == 0
            end
          end

          context "duplicate" do
            before { FactoryGirl.create(:side_headline, :headline => "UniqueTitle") }

            it "should fail" do
              visit refinery.side_headlines_admin_side_headlines_path

              click_link "Add New Side Headline"

              fill_in "Headline", :with => "UniqueTitle"
              click_button "Save"

              page.should have_content("There were problems")
              Refinery::SideHeadlines::SideHeadline.count.should == 1
            end
          end

        end

        describe "edit" do
          before { FactoryGirl.create(:side_headline, :headline => "A headline") }

          it "should succeed" do
            visit refinery.side_headlines_admin_side_headlines_path

            within ".actions" do
              click_link "Edit this side headline"
            end

            fill_in "Headline", :with => "A different headline"
            click_button "Save"

            page.should have_content("'A different headline' was successfully updated.")
            page.should have_no_content("A headline")
          end
        end

        describe "destroy" do
          before { FactoryGirl.create(:side_headline, :headline => "UniqueTitleOne") }

          it "should succeed" do
            visit refinery.side_headlines_admin_side_headlines_path

            click_link "Remove this side headline forever"

            page.should have_content("'UniqueTitleOne' was successfully removed.")
            Refinery::SideHeadlines::SideHeadline.count.should == 0
          end
        end

      end
    end
  end
end
