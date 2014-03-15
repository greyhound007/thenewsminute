# encoding: utf-8
require "spec_helper"

describe Refinery do
  describe "Randoms" do
    describe "Admin" do
      describe "randoms" do
        refinery_login_with :refinery_user

        describe "randoms list" do
          before do
            FactoryGirl.create(:random, :headline => "UniqueTitleOne")
            FactoryGirl.create(:random, :headline => "UniqueTitleTwo")
          end

          it "shows two items" do
            visit refinery.randoms_admin_randoms_path
            page.should have_content("UniqueTitleOne")
            page.should have_content("UniqueTitleTwo")
          end
        end

        describe "create" do
          before do
            visit refinery.randoms_admin_randoms_path

            click_link "Add New Random"
          end

          context "valid data" do
            it "should succeed" do
              fill_in "Headline", :with => "This is a test of the first string field"
              click_button "Save"

              page.should have_content("'This is a test of the first string field' was successfully added.")
              Refinery::Randoms::Random.count.should == 1
            end
          end

          context "invalid data" do
            it "should fail" do
              click_button "Save"

              page.should have_content("Headline can't be blank")
              Refinery::Randoms::Random.count.should == 0
            end
          end

          context "duplicate" do
            before { FactoryGirl.create(:random, :headline => "UniqueTitle") }

            it "should fail" do
              visit refinery.randoms_admin_randoms_path

              click_link "Add New Random"

              fill_in "Headline", :with => "UniqueTitle"
              click_button "Save"

              page.should have_content("There were problems")
              Refinery::Randoms::Random.count.should == 1
            end
          end

        end

        describe "edit" do
          before { FactoryGirl.create(:random, :headline => "A headline") }

          it "should succeed" do
            visit refinery.randoms_admin_randoms_path

            within ".actions" do
              click_link "Edit this random"
            end

            fill_in "Headline", :with => "A different headline"
            click_button "Save"

            page.should have_content("'A different headline' was successfully updated.")
            page.should have_no_content("A headline")
          end
        end

        describe "destroy" do
          before { FactoryGirl.create(:random, :headline => "UniqueTitleOne") }

          it "should succeed" do
            visit refinery.randoms_admin_randoms_path

            click_link "Remove this random forever"

            page.should have_content("'UniqueTitleOne' was successfully removed.")
            Refinery::Randoms::Random.count.should == 0
          end
        end

      end
    end
  end
end
