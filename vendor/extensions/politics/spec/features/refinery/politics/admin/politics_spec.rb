# encoding: utf-8
require "spec_helper"

describe Refinery do
  describe "Politics" do
    describe "Admin" do
      describe "politics" do
        refinery_login_with :refinery_user

        describe "politics list" do
          before do
            FactoryGirl.create(:politic, :headline_1 => "UniqueTitleOne")
            FactoryGirl.create(:politic, :headline_1 => "UniqueTitleTwo")
          end

          it "shows two items" do
            visit refinery.politics_admin_politics_path
            page.should have_content("UniqueTitleOne")
            page.should have_content("UniqueTitleTwo")
          end
        end

        describe "create" do
          before do
            visit refinery.politics_admin_politics_path

            click_link "Add New Politic"
          end

          context "valid data" do
            it "should succeed" do
              fill_in "Headline 1", :with => "This is a test of the first string field"
              click_button "Save"

              page.should have_content("'This is a test of the first string field' was successfully added.")
              Refinery::Politics::Politic.count.should == 1
            end
          end

          context "invalid data" do
            it "should fail" do
              click_button "Save"

              page.should have_content("Headline 1 can't be blank")
              Refinery::Politics::Politic.count.should == 0
            end
          end

          context "duplicate" do
            before { FactoryGirl.create(:politic, :headline_1 => "UniqueTitle") }

            it "should fail" do
              visit refinery.politics_admin_politics_path

              click_link "Add New Politic"

              fill_in "Headline 1", :with => "UniqueTitle"
              click_button "Save"

              page.should have_content("There were problems")
              Refinery::Politics::Politic.count.should == 1
            end
          end

        end

        describe "edit" do
          before { FactoryGirl.create(:politic, :headline_1 => "A headline_1") }

          it "should succeed" do
            visit refinery.politics_admin_politics_path

            within ".actions" do
              click_link "Edit this politic"
            end

            fill_in "Headline 1", :with => "A different headline_1"
            click_button "Save"

            page.should have_content("'A different headline_1' was successfully updated.")
            page.should have_no_content("A headline_1")
          end
        end

        describe "destroy" do
          before { FactoryGirl.create(:politic, :headline_1 => "UniqueTitleOne") }

          it "should succeed" do
            visit refinery.politics_admin_politics_path

            click_link "Remove this politic forever"

            page.should have_content("'UniqueTitleOne' was successfully removed.")
            Refinery::Politics::Politic.count.should == 0
          end
        end

      end
    end
  end
end
