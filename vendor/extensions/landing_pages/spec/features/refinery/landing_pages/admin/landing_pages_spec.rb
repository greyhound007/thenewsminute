# encoding: utf-8
require "spec_helper"

describe Refinery do
  describe "LandingPages" do
    describe "Admin" do
      describe "landing_pages" do
        refinery_login_with :refinery_user

        describe "landing_pages list" do
          before do
            FactoryGirl.create(:landing_page, :Homepage_Headline => "UniqueTitleOne")
            FactoryGirl.create(:landing_page, :Homepage_Headline => "UniqueTitleTwo")
          end

          it "shows two items" do
            visit refinery.landing_pages_admin_landing_pages_path
            page.should have_content("UniqueTitleOne")
            page.should have_content("UniqueTitleTwo")
          end
        end

        describe "create" do
          before do
            visit refinery.landing_pages_admin_landing_pages_path

            click_link "Add New Landing Page"
          end

          context "valid data" do
            it "should succeed" do
              fill_in "Homepage Headline", :with => "This is a test of the first string field"
              click_button "Save"

              page.should have_content("'This is a test of the first string field' was successfully added.")
              Refinery::LandingPages::LandingPage.count.should == 1
            end
          end

          context "invalid data" do
            it "should fail" do
              click_button "Save"

              page.should have_content("Homepage Headline can't be blank")
              Refinery::LandingPages::LandingPage.count.should == 0
            end
          end

          context "duplicate" do
            before { FactoryGirl.create(:landing_page, :Homepage_Headline => "UniqueTitle") }

            it "should fail" do
              visit refinery.landing_pages_admin_landing_pages_path

              click_link "Add New Landing Page"

              fill_in "Homepage Headline", :with => "UniqueTitle"
              click_button "Save"

              page.should have_content("There were problems")
              Refinery::LandingPages::LandingPage.count.should == 1
            end
          end

        end

        describe "edit" do
          before { FactoryGirl.create(:landing_page, :Homepage_Headline => "A Homepage_Headline") }

          it "should succeed" do
            visit refinery.landing_pages_admin_landing_pages_path

            within ".actions" do
              click_link "Edit this landing page"
            end

            fill_in "Homepage Headline", :with => "A different Homepage_Headline"
            click_button "Save"

            page.should have_content("'A different Homepage_Headline' was successfully updated.")
            page.should have_no_content("A Homepage_Headline")
          end
        end

        describe "destroy" do
          before { FactoryGirl.create(:landing_page, :Homepage_Headline => "UniqueTitleOne") }

          it "should succeed" do
            visit refinery.landing_pages_admin_landing_pages_path

            click_link "Remove this landing page forever"

            page.should have_content("'UniqueTitleOne' was successfully removed.")
            Refinery::LandingPages::LandingPage.count.should == 0
          end
        end

      end
    end
  end
end
