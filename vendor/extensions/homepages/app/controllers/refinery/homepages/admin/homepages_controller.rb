module Refinery
  module Homepages
    module Admin
      class HomepagesController < ::Refinery::AdminController

        crudify :'refinery/homepages/homepage',
                :title_attribute => 'main_headline',
                :xhr_paging => true

      end
    end
  end
end
