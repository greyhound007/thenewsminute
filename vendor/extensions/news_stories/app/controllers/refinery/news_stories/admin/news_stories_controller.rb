module Refinery
  module NewsStories
    module Admin
      class NewsStoriesController < ::Refinery::AdminController

        crudify :'refinery/news_stories/news_story',
                :title_attribute => 'headline_1',
                :xhr_paging => true

      end
    end
  end
end
