module Refinery
  module Keralas
    module Admin
      class KeralasController < ::Refinery::AdminController

        crudify :'refinery/keralas/kerala',
                :title_attribute => 'headline',
                :xhr_paging => true

      end
    end
  end
end
