# encoding: utf-8
require "spec_helper"

describe Refinery do
  describe "SouthernMinutes" do
    describe "Admin" do
      describe "southern_minutes" do
        refinery_login_with :refinery_user

        describe "southern_minutes list" do
          before do
            FactoryGirl.create(:southern_minute, :headline => "UniqueTitleOne")
            FactoryGirl.create(:southern_minute, :headline => "UniqueTitleTwo")
          end

          it "shows two items" do
            visit refinery.southern_minutes_admin_southern_minutes_path
            page.should have_content("UniqueTitleOne")
            page.should have_content("UniqueTitleTwo")
          end
        end

        describe "create" do
          before do
            visit refinery.southern_minutes_admin_southern_minutes_path

            click_link "Add New Southern Minute"
          end

          context "valid data" do
            it "should succeed" do
              fill_in "Headline", :with => "This is a test of the first string field"
              click_button "Save"

              page.should have_content("'This is a test of the first string field' was successfully added.")
              Refinery::SouthernMinutes::SouthernMinute.count.should == 1
            end
          end

          context "invalid data" do
            it "should fail" do
              click_button "Save"

              page.should have_content("Headline can't be blank")
              Refinery::SouthernMinutes::SouthernMinute.count.should == 0
            end
          end

          context "duplicate" do
            before { FactoryGirl.create(:southern_minute, :headline => "UniqueTitle") }

            it "should fail" do
              visit refinery.southern_minutes_admin_southern_minutes_path

              click_link "Add New Southern Minute"

              fill_in "Headline", :with => "UniqueTitle"
              click_button "Save"

              page.should have_content("There were problems")
              Refinery::SouthernMinutes::SouthernMinute.count.should == 1
            end
          end

        end

        describe "edit" do
          before { FactoryGirl.create(:southern_minute, :headline => "A headline") }

          it "should succeed" do
            visit refinery.southern_minutes_admin_southern_minutes_path

            within ".actions" do
              click_link "Edit this southern minute"
            end

            fill_in "Headline", :with => "A different headline"
            click_button "Save"

            page.should have_content("'A different headline' was successfully updated.")
            page.should have_no_content("A headline")
          end
        end

        describe "destroy" do
          before { FactoryGirl.create(:southern_minute, :headline => "UniqueTitleOne") }

          it "should succeed" do
            visit refinery.southern_minutes_admin_southern_minutes_path

            click_link "Remove this southern minute forever"

            page.should have_content("'UniqueTitleOne' was successfully removed.")
            Refinery::SouthernMinutes::SouthernMinute.count.should == 0
          end
        end

      end
    end
  end
end
