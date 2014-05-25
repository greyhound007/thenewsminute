# encoding: utf-8
require "spec_helper"

describe Refinery do
  describe "Headline2s" do
    describe "Admin" do
      describe "headline_2s" do
        refinery_login_with :refinery_user

        describe "headline_2s list" do
          before do
            FactoryGirl.create(:headline_2, :headline => "UniqueTitleOne")
            FactoryGirl.create(:headline_2, :headline => "UniqueTitleTwo")
          end

          it "shows two items" do
            visit refinery.headline2s_admin_headline_2s_path
            page.should have_content("UniqueTitleOne")
            page.should have_content("UniqueTitleTwo")
          end
        end

        describe "create" do
          before do
            visit refinery.headline2s_admin_headline_2s_path

            click_link "Add New Headline 2"
          end

          context "valid data" do
            it "should succeed" do
              fill_in "Headline", :with => "This is a test of the first string field"
              click_button "Save"

              page.should have_content("'This is a test of the first string field' was successfully added.")
              Refinery::Headline2s::Headline2.count.should == 1
            end
          end

          context "invalid data" do
            it "should fail" do
              click_button "Save"

              page.should have_content("Headline can't be blank")
              Refinery::Headline2s::Headline2.count.should == 0
            end
          end

          context "duplicate" do
            before { FactoryGirl.create(:headline_2, :headline => "UniqueTitle") }

            it "should fail" do
              visit refinery.headline2s_admin_headline_2s_path

              click_link "Add New Headline 2"

              fill_in "Headline", :with => "UniqueTitle"
              click_button "Save"

              page.should have_content("There were problems")
              Refinery::Headline2s::Headline2.count.should == 1
            end
          end

        end

        describe "edit" do
          before { FactoryGirl.create(:headline_2, :headline => "A headline") }

          it "should succeed" do
            visit refinery.headline2s_admin_headline_2s_path

            within ".actions" do
              click_link "Edit this headline 2"
            end

            fill_in "Headline", :with => "A different headline"
            click_button "Save"

            page.should have_content("'A different headline' was successfully updated.")
            page.should have_no_content("A headline")
          end
        end

        describe "destroy" do
          before { FactoryGirl.create(:headline_2, :headline => "UniqueTitleOne") }

          it "should succeed" do
            visit refinery.headline2s_admin_headline_2s_path

            click_link "Remove this headline 2 forever"

            page.should have_content("'UniqueTitleOne' was successfully removed.")
            Refinery::Headline2s::Headline2.count.should == 0
          end
        end

      end
    end
  end
end
