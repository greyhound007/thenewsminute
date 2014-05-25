# encoding: utf-8
require "spec_helper"

describe Refinery do
  describe "Tamils" do
    describe "Admin" do
      describe "tamils" do
        refinery_login_with :refinery_user

        describe "tamils list" do
          before do
            FactoryGirl.create(:tamil, :headline => "UniqueTitleOne")
            FactoryGirl.create(:tamil, :headline => "UniqueTitleTwo")
          end

          it "shows two items" do
            visit refinery.tamils_admin_tamils_path
            page.should have_content("UniqueTitleOne")
            page.should have_content("UniqueTitleTwo")
          end
        end

        describe "create" do
          before do
            visit refinery.tamils_admin_tamils_path

            click_link "Add New Tamil"
          end

          context "valid data" do
            it "should succeed" do
              fill_in "Headline", :with => "This is a test of the first string field"
              click_button "Save"

              page.should have_content("'This is a test of the first string field' was successfully added.")
              Refinery::Tamils::Tamil.count.should == 1
            end
          end

          context "invalid data" do
            it "should fail" do
              click_button "Save"

              page.should have_content("Headline can't be blank")
              Refinery::Tamils::Tamil.count.should == 0
            end
          end

          context "duplicate" do
            before { FactoryGirl.create(:tamil, :headline => "UniqueTitle") }

            it "should fail" do
              visit refinery.tamils_admin_tamils_path

              click_link "Add New Tamil"

              fill_in "Headline", :with => "UniqueTitle"
              click_button "Save"

              page.should have_content("There were problems")
              Refinery::Tamils::Tamil.count.should == 1
            end
          end

        end

        describe "edit" do
          before { FactoryGirl.create(:tamil, :headline => "A headline") }

          it "should succeed" do
            visit refinery.tamils_admin_tamils_path

            within ".actions" do
              click_link "Edit this tamil"
            end

            fill_in "Headline", :with => "A different headline"
            click_button "Save"

            page.should have_content("'A different headline' was successfully updated.")
            page.should have_no_content("A headline")
          end
        end

        describe "destroy" do
          before { FactoryGirl.create(:tamil, :headline => "UniqueTitleOne") }

          it "should succeed" do
            visit refinery.tamils_admin_tamils_path

            click_link "Remove this tamil forever"

            page.should have_content("'UniqueTitleOne' was successfully removed.")
            Refinery::Tamils::Tamil.count.should == 0
          end
        end

      end
    end
  end
end
