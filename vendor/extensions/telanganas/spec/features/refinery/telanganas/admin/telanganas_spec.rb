# encoding: utf-8
require "spec_helper"

describe Refinery do
  describe "Telanganas" do
    describe "Admin" do
      describe "telanganas" do
        refinery_login_with :refinery_user

        describe "telanganas list" do
          before do
            FactoryGirl.create(:telangana, :headline => "UniqueTitleOne")
            FactoryGirl.create(:telangana, :headline => "UniqueTitleTwo")
          end

          it "shows two items" do
            visit refinery.telanganas_admin_telanganas_path
            page.should have_content("UniqueTitleOne")
            page.should have_content("UniqueTitleTwo")
          end
        end

        describe "create" do
          before do
            visit refinery.telanganas_admin_telanganas_path

            click_link "Add New Telangana"
          end

          context "valid data" do
            it "should succeed" do
              fill_in "Headline", :with => "This is a test of the first string field"
              click_button "Save"

              page.should have_content("'This is a test of the first string field' was successfully added.")
              Refinery::Telanganas::Telangana.count.should == 1
            end
          end

          context "invalid data" do
            it "should fail" do
              click_button "Save"

              page.should have_content("Headline can't be blank")
              Refinery::Telanganas::Telangana.count.should == 0
            end
          end

          context "duplicate" do
            before { FactoryGirl.create(:telangana, :headline => "UniqueTitle") }

            it "should fail" do
              visit refinery.telanganas_admin_telanganas_path

              click_link "Add New Telangana"

              fill_in "Headline", :with => "UniqueTitle"
              click_button "Save"

              page.should have_content("There were problems")
              Refinery::Telanganas::Telangana.count.should == 1
            end
          end

        end

        describe "edit" do
          before { FactoryGirl.create(:telangana, :headline => "A headline") }

          it "should succeed" do
            visit refinery.telanganas_admin_telanganas_path

            within ".actions" do
              click_link "Edit this telangana"
            end

            fill_in "Headline", :with => "A different headline"
            click_button "Save"

            page.should have_content("'A different headline' was successfully updated.")
            page.should have_no_content("A headline")
          end
        end

        describe "destroy" do
          before { FactoryGirl.create(:telangana, :headline => "UniqueTitleOne") }

          it "should succeed" do
            visit refinery.telanganas_admin_telanganas_path

            click_link "Remove this telangana forever"

            page.should have_content("'UniqueTitleOne' was successfully removed.")
            Refinery::Telanganas::Telangana.count.should == 0
          end
        end

      end
    end
  end
end
