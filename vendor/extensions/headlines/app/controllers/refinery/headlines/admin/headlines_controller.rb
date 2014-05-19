module Refinery
  module Headlines
    module Admin
      class HeadlinesController < ::Refinery::AdminController

        crudify :'refinery/headlines/headline',
                :title_attribute => 'main_headline',
                :xhr_paging => true

      end
    end
  end
end
