# encoding: utf-8
require "spec_helper"

describe Refinery do
  describe "Karnatakas" do
    describe "Admin" do
      describe "karnatakas" do
        refinery_login_with :refinery_user

        describe "karnatakas list" do
          before do
            FactoryGirl.create(:karnataka, :headline => "UniqueTitleOne")
            FactoryGirl.create(:karnataka, :headline => "UniqueTitleTwo")
          end

          it "shows two items" do
            visit refinery.karnatakas_admin_karnatakas_path
            page.should have_content("UniqueTitleOne")
            page.should have_content("UniqueTitleTwo")
          end
        end

        describe "create" do
          before do
            visit refinery.karnatakas_admin_karnatakas_path

            click_link "Add New Karnataka"
          end

          context "valid data" do
            it "should succeed" do
              fill_in "Headline", :with => "This is a test of the first string field"
              click_button "Save"

              page.should have_content("'This is a test of the first string field' was successfully added.")
              Refinery::Karnatakas::Karnataka.count.should == 1
            end
          end

          context "invalid data" do
            it "should fail" do
              click_button "Save"

              page.should have_content("Headline can't be blank")
              Refinery::Karnatakas::Karnataka.count.should == 0
            end
          end

          context "duplicate" do
            before { FactoryGirl.create(:karnataka, :headline => "UniqueTitle") }

            it "should fail" do
              visit refinery.karnatakas_admin_karnatakas_path

              click_link "Add New Karnataka"

              fill_in "Headline", :with => "UniqueTitle"
              click_button "Save"

              page.should have_content("There were problems")
              Refinery::Karnatakas::Karnataka.count.should == 1
            end
          end

        end

        describe "edit" do
          before { FactoryGirl.create(:karnataka, :headline => "A headline") }

          it "should succeed" do
            visit refinery.karnatakas_admin_karnatakas_path

            within ".actions" do
              click_link "Edit this karnataka"
            end

            fill_in "Headline", :with => "A different headline"
            click_button "Save"

            page.should have_content("'A different headline' was successfully updated.")
            page.should have_no_content("A headline")
          end
        end

        describe "destroy" do
          before { FactoryGirl.create(:karnataka, :headline => "UniqueTitleOne") }

          it "should succeed" do
            visit refinery.karnatakas_admin_karnatakas_path

            click_link "Remove this karnataka forever"

            page.should have_content("'UniqueTitleOne' was successfully removed.")
            Refinery::Karnatakas::Karnataka.count.should == 0
          end
        end

      end
    end
  end
end
