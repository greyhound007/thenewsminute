module Refinery
  module Stories
    module Admin
      class StoriesController < ::Refinery::AdminController

        crudify :'refinery/stories/story',
                :title_attribute => 'Main_headline',
                :xhr_paging => true

      end
    end
  end
end
