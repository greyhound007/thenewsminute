module Refinery
  module Lives
    module Admin
      class LivesController < ::Refinery::AdminController

        crudify :'refinery/lives/life',
                :title_attribute => 'Main_headline',
          :per_page => '1000',
                :xhr_paging => true

      end
    end
  end
end
