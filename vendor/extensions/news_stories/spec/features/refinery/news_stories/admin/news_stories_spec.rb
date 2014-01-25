# encoding: utf-8
require "spec_helper"

describe Refinery do
  describe "NewsStories" do
    describe "Admin" do
      describe "news_stories" do
        refinery_login_with :refinery_user

        describe "news_stories list" do
          before do
            FactoryGirl.create(:news_story, :headline_1 => "UniqueTitleOne")
            FactoryGirl.create(:news_story, :headline_1 => "UniqueTitleTwo")
          end

          it "shows two items" do
            visit refinery.news_stories_admin_news_stories_path
            page.should have_content("UniqueTitleOne")
            page.should have_content("UniqueTitleTwo")
          end
        end

        describe "create" do
          before do
            visit refinery.news_stories_admin_news_stories_path

            click_link "Add New News Story"
          end

          context "valid data" do
            it "should succeed" do
              fill_in "Headline 1", :with => "This is a test of the first string field"
              click_button "Save"

              page.should have_content("'This is a test of the first string field' was successfully added.")
              Refinery::NewsStories::NewsStory.count.should == 1
            end
          end

          context "invalid data" do
            it "should fail" do
              click_button "Save"

              page.should have_content("Headline 1 can't be blank")
              Refinery::NewsStories::NewsStory.count.should == 0
            end
          end

          context "duplicate" do
            before { FactoryGirl.create(:news_story, :headline_1 => "UniqueTitle") }

            it "should fail" do
              visit refinery.news_stories_admin_news_stories_path

              click_link "Add New News Story"

              fill_in "Headline 1", :with => "UniqueTitle"
              click_button "Save"

              page.should have_content("There were problems")
              Refinery::NewsStories::NewsStory.count.should == 1
            end
          end

        end

        describe "edit" do
          before { FactoryGirl.create(:news_story, :headline_1 => "A headline_1") }

          it "should succeed" do
            visit refinery.news_stories_admin_news_stories_path

            within ".actions" do
              click_link "Edit this news story"
            end

            fill_in "Headline 1", :with => "A different headline_1"
            click_button "Save"

            page.should have_content("'A different headline_1' was successfully updated.")
            page.should have_no_content("A headline_1")
          end
        end

        describe "destroy" do
          before { FactoryGirl.create(:news_story, :headline_1 => "UniqueTitleOne") }

          it "should succeed" do
            visit refinery.news_stories_admin_news_stories_path

            click_link "Remove this news story forever"

            page.should have_content("'UniqueTitleOne' was successfully removed.")
            Refinery::NewsStories::NewsStory.count.should == 0
          end
        end

      end
    end
  end
end
