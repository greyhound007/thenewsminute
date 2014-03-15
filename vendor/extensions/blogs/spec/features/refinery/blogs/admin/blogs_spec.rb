# encoding: utf-8
require "spec_helper"

describe Refinery do
  describe "Blogs" do
    describe "Admin" do
      describe "blogs" do
        refinery_login_with :refinery_user

        describe "blogs list" do
          before do
            FactoryGirl.create(:blog, :headline => "UniqueTitleOne")
            FactoryGirl.create(:blog, :headline => "UniqueTitleTwo")
          end

          it "shows two items" do
            visit refinery.blogs_admin_blogs_path
            page.should have_content("UniqueTitleOne")
            page.should have_content("UniqueTitleTwo")
          end
        end

        describe "create" do
          before do
            visit refinery.blogs_admin_blogs_path

            click_link "Add New Blog"
          end

          context "valid data" do
            it "should succeed" do
              fill_in "Headline", :with => "This is a test of the first string field"
              click_button "Save"

              page.should have_content("'This is a test of the first string field' was successfully added.")
              Refinery::Blogs::Blog.count.should == 1
            end
          end

          context "invalid data" do
            it "should fail" do
              click_button "Save"

              page.should have_content("Headline can't be blank")
              Refinery::Blogs::Blog.count.should == 0
            end
          end

          context "duplicate" do
            before { FactoryGirl.create(:blog, :headline => "UniqueTitle") }

            it "should fail" do
              visit refinery.blogs_admin_blogs_path

              click_link "Add New Blog"

              fill_in "Headline", :with => "UniqueTitle"
              click_button "Save"

              page.should have_content("There were problems")
              Refinery::Blogs::Blog.count.should == 1
            end
          end

        end

        describe "edit" do
          before { FactoryGirl.create(:blog, :headline => "A headline") }

          it "should succeed" do
            visit refinery.blogs_admin_blogs_path

            within ".actions" do
              click_link "Edit this blog"
            end

            fill_in "Headline", :with => "A different headline"
            click_button "Save"

            page.should have_content("'A different headline' was successfully updated.")
            page.should have_no_content("A headline")
          end
        end

        describe "destroy" do
          before { FactoryGirl.create(:blog, :headline => "UniqueTitleOne") }

          it "should succeed" do
            visit refinery.blogs_admin_blogs_path

            click_link "Remove this blog forever"

            page.should have_content("'UniqueTitleOne' was successfully removed.")
            Refinery::Blogs::Blog.count.should == 0
          end
        end

      end
    end
  end
end
