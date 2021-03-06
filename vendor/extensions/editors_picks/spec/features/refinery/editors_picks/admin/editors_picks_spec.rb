# encoding: utf-8
require "spec_helper"

describe Refinery do
  describe "EditorsPicks" do
    describe "Admin" do
      describe "editors_picks" do
        refinery_login_with :refinery_user

        describe "editors_picks list" do
          before do
            FactoryGirl.create(:editors_pick, :headline => "UniqueTitleOne")
            FactoryGirl.create(:editors_pick, :headline => "UniqueTitleTwo")
          end

          it "shows two items" do
            visit refinery.editors_picks_admin_editors_picks_path
            page.should have_content("UniqueTitleOne")
            page.should have_content("UniqueTitleTwo")
          end
        end

        describe "create" do
          before do
            visit refinery.editors_picks_admin_editors_picks_path

            click_link "Add New Editors Pick"
          end

          context "valid data" do
            it "should succeed" do
              fill_in "Headline", :with => "This is a test of the first string field"
              click_button "Save"

              page.should have_content("'This is a test of the first string field' was successfully added.")
              Refinery::EditorsPicks::EditorsPick.count.should == 1
            end
          end

          context "invalid data" do
            it "should fail" do
              click_button "Save"

              page.should have_content("Headline can't be blank")
              Refinery::EditorsPicks::EditorsPick.count.should == 0
            end
          end

          context "duplicate" do
            before { FactoryGirl.create(:editors_pick, :headline => "UniqueTitle") }

            it "should fail" do
              visit refinery.editors_picks_admin_editors_picks_path

              click_link "Add New Editors Pick"

              fill_in "Headline", :with => "UniqueTitle"
              click_button "Save"

              page.should have_content("There were problems")
              Refinery::EditorsPicks::EditorsPick.count.should == 1
            end
          end

        end

        describe "edit" do
          before { FactoryGirl.create(:editors_pick, :headline => "A headline") }

          it "should succeed" do
            visit refinery.editors_picks_admin_editors_picks_path

            within ".actions" do
              click_link "Edit this editors pick"
            end

            fill_in "Headline", :with => "A different headline"
            click_button "Save"

            page.should have_content("'A different headline' was successfully updated.")
            page.should have_no_content("A headline")
          end
        end

        describe "destroy" do
          before { FactoryGirl.create(:editors_pick, :headline => "UniqueTitleOne") }

          it "should succeed" do
            visit refinery.editors_picks_admin_editors_picks_path

            click_link "Remove this editors pick forever"

            page.should have_content("'UniqueTitleOne' was successfully removed.")
            Refinery::EditorsPicks::EditorsPick.count.should == 0
          end
        end

      end
    end
  end
end
