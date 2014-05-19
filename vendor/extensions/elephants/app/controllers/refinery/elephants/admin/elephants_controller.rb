module Refinery
  module Elephants
    module Admin
      class ElephantsController < ::Refinery::AdminController

        crudify :'refinery/elephants/elephant',
                :title_attribute => 'headline',
                :xhr_paging => true

      end
    end
  end
end
