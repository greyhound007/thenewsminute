module Refinery
  module Specials
    module Admin
      class SpecialsController < ::Refinery::AdminController

        crudify :'refinery/specials/special',
                :title_attribute => 'headline',
                :xhr_paging => true

      end
    end
  end
end
