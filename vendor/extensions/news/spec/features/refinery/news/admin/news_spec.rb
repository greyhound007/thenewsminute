# encoding: utf-8
require "spec_helper"

describe Refinery do
  describe "News" do
    describe "Admin" do
      describe "news" do
        refinery_login_with :refinery_user

        describe "news list" do
          before do
            FactoryGirl.create(:new, :Main_headline => "UniqueTitleOne")
            FactoryGirl.create(:new, :Main_headline => "UniqueTitleTwo")
          end

          it "shows two items" do
            visit refinery.news_admin_news_path
            page.should have_content("UniqueTitleOne")
            page.should have_content("UniqueTitleTwo")
          end
        end

        describe "create" do
          before do
            visit refinery.news_admin_news_path

            click_link "Add New New"
          end

          context "valid data" do
            it "should succeed" do
              fill_in "Main Headline", :with => "This is a test of the first string field"
              click_button "Save"

              page.should have_content("'This is a test of the first string field' was successfully added.")
              Refinery::News::New.count.should == 1
            end
          end

          context "invalid data" do
            it "should fail" do
              click_button "Save"

              page.should have_content("Main Headline can't be blank")
              Refinery::News::New.count.should == 0
            end
          end

          context "duplicate" do
            before { FactoryGirl.create(:new, :Main_headline => "UniqueTitle") }

            it "should fail" do
              visit refinery.news_admin_news_path

              click_link "Add New New"

              fill_in "Main Headline", :with => "UniqueTitle"
              click_button "Save"

              page.should have_content("There were problems")
              Refinery::News::New.count.should == 1
            end
          end

        end

        describe "edit" do
          before { FactoryGirl.create(:new, :Main_headline => "A Main_headline") }

          it "should succeed" do
            visit refinery.news_admin_news_path

            within ".actions" do
              click_link "Edit this new"
            end

            fill_in "Main Headline", :with => "A different Main_headline"
            click_button "Save"

            page.should have_content("'A different Main_headline' was successfully updated.")
            page.should have_no_content("A Main_headline")
          end
        end

        describe "destroy" do
          before { FactoryGirl.create(:new, :Main_headline => "UniqueTitleOne") }

          it "should succeed" do
            visit refinery.news_admin_news_path

            click_link "Remove this new forever"

            page.should have_content("'UniqueTitleOne' was successfully removed.")
            Refinery::News::New.count.should == 0
          end
        end

      end
    end
  end
end
