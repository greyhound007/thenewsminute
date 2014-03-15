# encoding: utf-8
require "spec_helper"

describe Refinery do
  describe "Specials" do
    describe "Admin" do
      describe "specials" do
        refinery_login_with :refinery_user

        describe "specials list" do
          before do
            FactoryGirl.create(:special, :headline => "UniqueTitleOne")
            FactoryGirl.create(:special, :headline => "UniqueTitleTwo")
          end

          it "shows two items" do
            visit refinery.specials_admin_specials_path
            page.should have_content("UniqueTitleOne")
            page.should have_content("UniqueTitleTwo")
          end
        end

        describe "create" do
          before do
            visit refinery.specials_admin_specials_path

            click_link "Add New Special"
          end

          context "valid data" do
            it "should succeed" do
              fill_in "Headline", :with => "This is a test of the first string field"
              click_button "Save"

              page.should have_content("'This is a test of the first string field' was successfully added.")
              Refinery::Specials::Special.count.should == 1
            end
          end

          context "invalid data" do
            it "should fail" do
              click_button "Save"

              page.should have_content("Headline can't be blank")
              Refinery::Specials::Special.count.should == 0
            end
          end

          context "duplicate" do
            before { FactoryGirl.create(:special, :headline => "UniqueTitle") }

            it "should fail" do
              visit refinery.specials_admin_specials_path

              click_link "Add New Special"

              fill_in "Headline", :with => "UniqueTitle"
              click_button "Save"

              page.should have_content("There were problems")
              Refinery::Specials::Special.count.should == 1
            end
          end

        end

        describe "edit" do
          before { FactoryGirl.create(:special, :headline => "A headline") }

          it "should succeed" do
            visit refinery.specials_admin_specials_path

            within ".actions" do
              click_link "Edit this special"
            end

            fill_in "Headline", :with => "A different headline"
            click_button "Save"

            page.should have_content("'A different headline' was successfully updated.")
            page.should have_no_content("A headline")
          end
        end

        describe "destroy" do
          before { FactoryGirl.create(:special, :headline => "UniqueTitleOne") }

          it "should succeed" do
            visit refinery.specials_admin_specials_path

            click_link "Remove this special forever"

            page.should have_content("'UniqueTitleOne' was successfully removed.")
            Refinery::Specials::Special.count.should == 0
          end
        end

      end
    end
  end
end
