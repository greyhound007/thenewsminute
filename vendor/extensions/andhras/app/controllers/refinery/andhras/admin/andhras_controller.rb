module Refinery
  module Andhras
    module Admin
      class AndhrasController < ::Refinery::AdminController

        crudify :'refinery/andhras/andhra',
                :title_attribute => 'headline',
                :xhr_paging => true

      end
    end
  end
end
