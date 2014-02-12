module Refinery
  module LandingPages
    module Admin
      class LandingPagesController < ::Refinery::AdminController

        crudify :'refinery/landing_pages/landing_page',
                :title_attribute => 'Homepage_Headline',
                :xhr_paging => true

      end
    end
  end
end
