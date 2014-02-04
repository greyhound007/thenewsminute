# encoding: utf-8
require "spec_helper"

describe Refinery do
  describe "Homepages" do
    describe "Admin" do
      describe "homepages" do
        refinery_login_with :refinery_user

        describe "homepages list" do
          before do
            FactoryGirl.create(:homepage, :main_headline => "UniqueTitleOne")
            FactoryGirl.create(:homepage, :main_headline => "UniqueTitleTwo")
          end

          it "shows two items" do
            visit refinery.homepages_admin_homepages_path
            page.should have_content("UniqueTitleOne")
            page.should have_content("UniqueTitleTwo")
          end
        end

        describe "create" do
          before do
            visit refinery.homepages_admin_homepages_path

            click_link "Add New Homepage"
          end

          context "valid data" do
            it "should succeed" do
              fill_in "Main Headline", :with => "This is a test of the first string field"
              click_button "Save"

              page.should have_content("'This is a test of the first string field' was successfully added.")
              Refinery::Homepages::Homepage.count.should == 1
            end
          end

          context "invalid data" do
            it "should fail" do
              click_button "Save"

              page.should have_content("Main Headline can't be blank")
              Refinery::Homepages::Homepage.count.should == 0
            end
          end

          context "duplicate" do
            before { FactoryGirl.create(:homepage, :main_headline => "UniqueTitle") }

            it "should fail" do
              visit refinery.homepages_admin_homepages_path

              click_link "Add New Homepage"

              fill_in "Main Headline", :with => "UniqueTitle"
              click_button "Save"

              page.should have_content("There were problems")
              Refinery::Homepages::Homepage.count.should == 1
            end
          end

        end

        describe "edit" do
          before { FactoryGirl.create(:homepage, :main_headline => "A main_headline") }

          it "should succeed" do
            visit refinery.homepages_admin_homepages_path

            within ".actions" do
              click_link "Edit this homepage"
            end

            fill_in "Main Headline", :with => "A different main_headline"
            click_button "Save"

            page.should have_content("'A different main_headline' was successfully updated.")
            page.should have_no_content("A main_headline")
          end
        end

        describe "destroy" do
          before { FactoryGirl.create(:homepage, :main_headline => "UniqueTitleOne") }

          it "should succeed" do
            visit refinery.homepages_admin_homepages_path

            click_link "Remove this homepage forever"

            page.should have_content("'UniqueTitleOne' was successfully removed.")
            Refinery::Homepages::Homepage.count.should == 0
          end
        end

      end
    end
  end
end
