# encoding: utf-8
require "spec_helper"

describe Refinery do
  describe "NewsSections" do
    describe "Admin" do
      describe "news_sections" do
        refinery_login_with :refinery_user

        describe "news_sections list" do
          before do
            FactoryGirl.create(:news_section, :Main_headline => "UniqueTitleOne")
            FactoryGirl.create(:news_section, :Main_headline => "UniqueTitleTwo")
          end

          it "shows two items" do
            visit refinery.news_sections_admin_news_sections_path
            page.should have_content("UniqueTitleOne")
            page.should have_content("UniqueTitleTwo")
          end
        end

        describe "create" do
          before do
            visit refinery.news_sections_admin_news_sections_path

            click_link "Add New News Section"
          end

          context "valid data" do
            it "should succeed" do
              fill_in "Main Headline", :with => "This is a test of the first string field"
              click_button "Save"

              page.should have_content("'This is a test of the first string field' was successfully added.")
              Refinery::NewsSections::NewsSection.count.should == 1
            end
          end

          context "invalid data" do
            it "should fail" do
              click_button "Save"

              page.should have_content("Main Headline can't be blank")
              Refinery::NewsSections::NewsSection.count.should == 0
            end
          end

          context "duplicate" do
            before { FactoryGirl.create(:news_section, :Main_headline => "UniqueTitle") }

            it "should fail" do
              visit refinery.news_sections_admin_news_sections_path

              click_link "Add New News Section"

              fill_in "Main Headline", :with => "UniqueTitle"
              click_button "Save"

              page.should have_content("There were problems")
              Refinery::NewsSections::NewsSection.count.should == 1
            end
          end

        end

        describe "edit" do
          before { FactoryGirl.create(:news_section, :Main_headline => "A Main_headline") }

          it "should succeed" do
            visit refinery.news_sections_admin_news_sections_path

            within ".actions" do
              click_link "Edit this news section"
            end

            fill_in "Main Headline", :with => "A different Main_headline"
            click_button "Save"

            page.should have_content("'A different Main_headline' was successfully updated.")
            page.should have_no_content("A Main_headline")
          end
        end

        describe "destroy" do
          before { FactoryGirl.create(:news_section, :Main_headline => "UniqueTitleOne") }

          it "should succeed" do
            visit refinery.news_sections_admin_news_sections_path

            click_link "Remove this news section forever"

            page.should have_content("'UniqueTitleOne' was successfully removed.")
            Refinery::NewsSections::NewsSection.count.should == 0
          end
        end

      end
    end
  end
end
