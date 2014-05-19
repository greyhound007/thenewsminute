# encoding: utf-8
require "spec_helper"

describe Refinery do
  describe "Worlds" do
    describe "Admin" do
      describe "worlds" do
        refinery_login_with :refinery_user

        describe "worlds list" do
          before do
            FactoryGirl.create(:world, :Main_headline => "UniqueTitleOne")
            FactoryGirl.create(:world, :Main_headline => "UniqueTitleTwo")
          end

          it "shows two items" do
            visit refinery.worlds_admin_worlds_path
            page.should have_content("UniqueTitleOne")
            page.should have_content("UniqueTitleTwo")
          end
        end

        describe "create" do
          before do
            visit refinery.worlds_admin_worlds_path

            click_link "Add New World"
          end

          context "valid data" do
            it "should succeed" do
              fill_in "Main Headline", :with => "This is a test of the first string field"
              click_button "Save"

              page.should have_content("'This is a test of the first string field' was successfully added.")
              Refinery::Worlds::World.count.should == 1
            end
          end

          context "invalid data" do
            it "should fail" do
              click_button "Save"

              page.should have_content("Main Headline can't be blank")
              Refinery::Worlds::World.count.should == 0
            end
          end

          context "duplicate" do
            before { FactoryGirl.create(:world, :Main_headline => "UniqueTitle") }

            it "should fail" do
              visit refinery.worlds_admin_worlds_path

              click_link "Add New World"

              fill_in "Main Headline", :with => "UniqueTitle"
              click_button "Save"

              page.should have_content("There were problems")
              Refinery::Worlds::World.count.should == 1
            end
          end

        end

        describe "edit" do
          before { FactoryGirl.create(:world, :Main_headline => "A Main_headline") }

          it "should succeed" do
            visit refinery.worlds_admin_worlds_path

            within ".actions" do
              click_link "Edit this world"
            end

            fill_in "Main Headline", :with => "A different Main_headline"
            click_button "Save"

            page.should have_content("'A different Main_headline' was successfully updated.")
            page.should have_no_content("A Main_headline")
          end
        end

        describe "destroy" do
          before { FactoryGirl.create(:world, :Main_headline => "UniqueTitleOne") }

          it "should succeed" do
            visit refinery.worlds_admin_worlds_path

            click_link "Remove this world forever"

            page.should have_content("'UniqueTitleOne' was successfully removed.")
            Refinery::Worlds::World.count.should == 0
          end
        end

      end
    end
  end
end
