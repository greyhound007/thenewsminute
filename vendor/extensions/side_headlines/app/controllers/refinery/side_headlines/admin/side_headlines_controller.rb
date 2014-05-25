module Refinery
  module SideHeadlines
    module Admin
      class SideHeadlinesController < ::Refinery::AdminController

        crudify :'refinery/side_headlines/side_headline',
                :title_attribute => 'headline',
                :xhr_paging => true

      end
    end
  end
end
