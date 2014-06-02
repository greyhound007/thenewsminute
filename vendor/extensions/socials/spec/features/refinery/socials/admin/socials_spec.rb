# encoding: utf-8
require "spec_helper"

describe Refinery do
  describe "Socials" do
    describe "Admin" do
      describe "socials" do
        refinery_login_with :refinery_user

        describe "socials list" do
          before do
            FactoryGirl.create(:social, :Main_headline => "UniqueTitleOne")
            FactoryGirl.create(:social, :Main_headline => "UniqueTitleTwo")
          end

          it "shows two items" do
            visit refinery.socials_admin_socials_path
            page.should have_content("UniqueTitleOne")
            page.should have_content("UniqueTitleTwo")
          end
        end

        describe "create" do
          before do
            visit refinery.socials_admin_socials_path

            click_link "Add New Social"
          end

          context "valid data" do
            it "should succeed" do
              fill_in "Main Headline", :with => "This is a test of the first string field"
              click_button "Save"

              page.should have_content("'This is a test of the first string field' was successfully added.")
              Refinery::Socials::Social.count.should == 1
            end
          end

          context "invalid data" do
            it "should fail" do
              click_button "Save"

              page.should have_content("Main Headline can't be blank")
              Refinery::Socials::Social.count.should == 0
            end
          end

          context "duplicate" do
            before { FactoryGirl.create(:social, :Main_headline => "UniqueTitle") }

            it "should fail" do
              visit refinery.socials_admin_socials_path

              click_link "Add New Social"

              fill_in "Main Headline", :with => "UniqueTitle"
              click_button "Save"

              page.should have_content("There were problems")
              Refinery::Socials::Social.count.should == 1
            end
          end

        end

        describe "edit" do
          before { FactoryGirl.create(:social, :Main_headline => "A Main_headline") }

          it "should succeed" do
            visit refinery.socials_admin_socials_path

            within ".actions" do
              click_link "Edit this social"
            end

            fill_in "Main Headline", :with => "A different Main_headline"
            click_button "Save"

            page.should have_content("'A different Main_headline' was successfully updated.")
            page.should have_no_content("A Main_headline")
          end
        end

        describe "destroy" do
          before { FactoryGirl.create(:social, :Main_headline => "UniqueTitleOne") }

          it "should succeed" do
            visit refinery.socials_admin_socials_path

            click_link "Remove this social forever"

            page.should have_content("'UniqueTitleOne' was successfully removed.")
            Refinery::Socials::Social.count.should == 0
          end
        end

      end
    end
  end
end
