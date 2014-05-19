module Refinery
  module Ears
    module Admin
      class EarsController < ::Refinery::AdminController

        crudify :'refinery/ears/ear',
                :title_attribute => 'headline',
                :xhr_paging => true

      end
    end
  end
end
