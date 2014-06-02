module Refinery
  module NewsSections
    module Admin
      class NewsSectionsController < ::Refinery::AdminController

        crudify :'refinery/news_sections/news_section',
                :title_attribute => 'Main_headline',
                :per_page => '1000',
                :xhr_paging => true

      end
    end
  end
end
