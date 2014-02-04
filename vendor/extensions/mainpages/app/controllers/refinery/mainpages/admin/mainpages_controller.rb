module Refinery
  module Mainpages
    module Admin
      class MainpagesController < ::Refinery::AdminController

        crudify :'refinery/mainpages/mainpage',
                :title_attribute => 'main_headline',
                :xhr_paging => true

      end
    end
  end
end
