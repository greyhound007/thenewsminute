module Refinery
  module Tamils
    module Admin
      class TamilsController < ::Refinery::AdminController

        crudify :'refinery/tamils/tamil',
                :title_attribute => 'headline',
                :xhr_paging => true

      end
    end
  end
end
