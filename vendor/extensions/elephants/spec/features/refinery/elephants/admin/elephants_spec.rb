# encoding: utf-8
require "spec_helper"

describe Refinery do
  describe "Elephants" do
    describe "Admin" do
      describe "elephants" do
        refinery_login_with :refinery_user

        describe "elephants list" do
          before do
            FactoryGirl.create(:elephant, :headline => "UniqueTitleOne")
            FactoryGirl.create(:elephant, :headline => "UniqueTitleTwo")
          end

          it "shows two items" do
            visit refinery.elephants_admin_elephants_path
            page.should have_content("UniqueTitleOne")
            page.should have_content("UniqueTitleTwo")
          end
        end

        describe "create" do
          before do
            visit refinery.elephants_admin_elephants_path

            click_link "Add New Elephant"
          end

          context "valid data" do
            it "should succeed" do
              fill_in "Headline", :with => "This is a test of the first string field"
              click_button "Save"

              page.should have_content("'This is a test of the first string field' was successfully added.")
              Refinery::Elephants::Elephant.count.should == 1
            end
          end

          context "invalid data" do
            it "should fail" do
              click_button "Save"

              page.should have_content("Headline can't be blank")
              Refinery::Elephants::Elephant.count.should == 0
            end
          end

          context "duplicate" do
            before { FactoryGirl.create(:elephant, :headline => "UniqueTitle") }

            it "should fail" do
              visit refinery.elephants_admin_elephants_path

              click_link "Add New Elephant"

              fill_in "Headline", :with => "UniqueTitle"
              click_button "Save"

              page.should have_content("There were problems")
              Refinery::Elephants::Elephant.count.should == 1
            end
          end

        end

        describe "edit" do
          before { FactoryGirl.create(:elephant, :headline => "A headline") }

          it "should succeed" do
            visit refinery.elephants_admin_elephants_path

            within ".actions" do
              click_link "Edit this elephant"
            end

            fill_in "Headline", :with => "A different headline"
            click_button "Save"

            page.should have_content("'A different headline' was successfully updated.")
            page.should have_no_content("A headline")
          end
        end

        describe "destroy" do
          before { FactoryGirl.create(:elephant, :headline => "UniqueTitleOne") }

          it "should succeed" do
            visit refinery.elephants_admin_elephants_path

            click_link "Remove this elephant forever"

            page.should have_content("'UniqueTitleOne' was successfully removed.")
            Refinery::Elephants::Elephant.count.should == 0
          end
        end

      end
    end
  end
end
