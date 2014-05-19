module Refinery
  module News
    module Admin
      class NewsController < ::Refinery::AdminController

        crudify :'refinery/news/new',
                :title_attribute => 'Main_headline',
                :xhr_paging => true

      end
    end
  end
end
