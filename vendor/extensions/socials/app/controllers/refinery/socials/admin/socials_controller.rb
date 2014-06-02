module Refinery
  module Socials
    module Admin
      class SocialsController < ::Refinery::AdminController

        crudify :'refinery/socials/social',
                :title_attribute => 'Main_headline',
          :per_page => '1000',
                :xhr_paging => true

      end
    end
  end
end
