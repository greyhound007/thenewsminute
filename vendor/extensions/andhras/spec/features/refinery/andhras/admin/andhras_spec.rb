# encoding: utf-8
require "spec_helper"

describe Refinery do
  describe "Andhras" do
    describe "Admin" do
      describe "andhras" do
        refinery_login_with :refinery_user

        describe "andhras list" do
          before do
            FactoryGirl.create(:andhra, :headline => "UniqueTitleOne")
            FactoryGirl.create(:andhra, :headline => "UniqueTitleTwo")
          end

          it "shows two items" do
            visit refinery.andhras_admin_andhras_path
            page.should have_content("UniqueTitleOne")
            page.should have_content("UniqueTitleTwo")
          end
        end

        describe "create" do
          before do
            visit refinery.andhras_admin_andhras_path

            click_link "Add New Andhra"
          end

          context "valid data" do
            it "should succeed" do
              fill_in "Headline", :with => "This is a test of the first string field"
              click_button "Save"

              page.should have_content("'This is a test of the first string field' was successfully added.")
              Refinery::Andhras::Andhra.count.should == 1
            end
          end

          context "invalid data" do
            it "should fail" do
              click_button "Save"

              page.should have_content("Headline can't be blank")
              Refinery::Andhras::Andhra.count.should == 0
            end
          end

          context "duplicate" do
            before { FactoryGirl.create(:andhra, :headline => "UniqueTitle") }

            it "should fail" do
              visit refinery.andhras_admin_andhras_path

              click_link "Add New Andhra"

              fill_in "Headline", :with => "UniqueTitle"
              click_button "Save"

              page.should have_content("There were problems")
              Refinery::Andhras::Andhra.count.should == 1
            end
          end

        end

        describe "edit" do
          before { FactoryGirl.create(:andhra, :headline => "A headline") }

          it "should succeed" do
            visit refinery.andhras_admin_andhras_path

            within ".actions" do
              click_link "Edit this andhra"
            end

            fill_in "Headline", :with => "A different headline"
            click_button "Save"

            page.should have_content("'A different headline' was successfully updated.")
            page.should have_no_content("A headline")
          end
        end

        describe "destroy" do
          before { FactoryGirl.create(:andhra, :headline => "UniqueTitleOne") }

          it "should succeed" do
            visit refinery.andhras_admin_andhras_path

            click_link "Remove this andhra forever"

            page.should have_content("'UniqueTitleOne' was successfully removed.")
            Refinery::Andhras::Andhra.count.should == 0
          end
        end

      end
    end
  end
end
