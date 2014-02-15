# encoding: utf-8
require "spec_helper"

describe Refinery do
  describe "Redirects" do
    describe "Admin" do
      describe "redirects" do
        refinery_login_with :refinery_user

        describe "redirects list" do
          before do
            FactoryGirl.create(:redirect, :Homepage_Headline => "UniqueTitleOne")
            FactoryGirl.create(:redirect, :Homepage_Headline => "UniqueTitleTwo")
          end

          it "shows two items" do
            visit refinery.redirects_admin_redirects_path
            page.should have_content("UniqueTitleOne")
            page.should have_content("UniqueTitleTwo")
          end
        end

        describe "create" do
          before do
            visit refinery.redirects_admin_redirects_path

            click_link "Add New Redirect"
          end

          context "valid data" do
            it "should succeed" do
              fill_in "Homepage Headline", :with => "This is a test of the first string field"
              click_button "Save"

              page.should have_content("'This is a test of the first string field' was successfully added.")
              Refinery::Redirects::Redirect.count.should == 1
            end
          end

          context "invalid data" do
            it "should fail" do
              click_button "Save"

              page.should have_content("Homepage Headline can't be blank")
              Refinery::Redirects::Redirect.count.should == 0
            end
          end

          context "duplicate" do
            before { FactoryGirl.create(:redirect, :Homepage_Headline => "UniqueTitle") }

            it "should fail" do
              visit refinery.redirects_admin_redirects_path

              click_link "Add New Redirect"

              fill_in "Homepage Headline", :with => "UniqueTitle"
              click_button "Save"

              page.should have_content("There were problems")
              Refinery::Redirects::Redirect.count.should == 1
            end
          end

        end

        describe "edit" do
          before { FactoryGirl.create(:redirect, :Homepage_Headline => "A Homepage_Headline") }

          it "should succeed" do
            visit refinery.redirects_admin_redirects_path

            within ".actions" do
              click_link "Edit this redirect"
            end

            fill_in "Homepage Headline", :with => "A different Homepage_Headline"
            click_button "Save"

            page.should have_content("'A different Homepage_Headline' was successfully updated.")
            page.should have_no_content("A Homepage_Headline")
          end
        end

        describe "destroy" do
          before { FactoryGirl.create(:redirect, :Homepage_Headline => "UniqueTitleOne") }

          it "should succeed" do
            visit refinery.redirects_admin_redirects_path

            click_link "Remove this redirect forever"

            page.should have_content("'UniqueTitleOne' was successfully removed.")
            Refinery::Redirects::Redirect.count.should == 0
          end
        end

      end
    end
  end
end
