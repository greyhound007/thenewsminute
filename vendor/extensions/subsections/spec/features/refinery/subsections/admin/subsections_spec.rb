# encoding: utf-8
require "spec_helper"

describe Refinery do
  describe "Subsections" do
    describe "Admin" do
      describe "subsections" do
        refinery_login_with :refinery_user

        describe "subsections list" do
          before do
            FactoryGirl.create(:subsection, :Topic => "UniqueTitleOne")
            FactoryGirl.create(:subsection, :Topic => "UniqueTitleTwo")
          end

          it "shows two items" do
            visit refinery.subsections_admin_subsections_path
            page.should have_content("UniqueTitleOne")
            page.should have_content("UniqueTitleTwo")
          end
        end

        describe "create" do
          before do
            visit refinery.subsections_admin_subsections_path

            click_link "Add New Subsection"
          end

          context "valid data" do
            it "should succeed" do
              fill_in "Topic", :with => "This is a test of the first string field"
              click_button "Save"

              page.should have_content("'This is a test of the first string field' was successfully added.")
              Refinery::Subsections::Subsection.count.should == 1
            end
          end

          context "invalid data" do
            it "should fail" do
              click_button "Save"

              page.should have_content("Topic can't be blank")
              Refinery::Subsections::Subsection.count.should == 0
            end
          end

          context "duplicate" do
            before { FactoryGirl.create(:subsection, :Topic => "UniqueTitle") }

            it "should fail" do
              visit refinery.subsections_admin_subsections_path

              click_link "Add New Subsection"

              fill_in "Topic", :with => "UniqueTitle"
              click_button "Save"

              page.should have_content("There were problems")
              Refinery::Subsections::Subsection.count.should == 1
            end
          end

        end

        describe "edit" do
          before { FactoryGirl.create(:subsection, :Topic => "A Topic") }

          it "should succeed" do
            visit refinery.subsections_admin_subsections_path

            within ".actions" do
              click_link "Edit this subsection"
            end

            fill_in "Topic", :with => "A different Topic"
            click_button "Save"

            page.should have_content("'A different Topic' was successfully updated.")
            page.should have_no_content("A Topic")
          end
        end

        describe "destroy" do
          before { FactoryGirl.create(:subsection, :Topic => "UniqueTitleOne") }

          it "should succeed" do
            visit refinery.subsections_admin_subsections_path

            click_link "Remove this subsection forever"

            page.should have_content("'UniqueTitleOne' was successfully removed.")
            Refinery::Subsections::Subsection.count.should == 0
          end
        end

      end
    end
  end
end
