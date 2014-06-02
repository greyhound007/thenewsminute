module Refinery
  module Andhras
    module Admin
      class AndhrasController < ::Refinery::AdminController

        crudify :'refinery/andhras/andhra',
                :title_attribute => 'headline',
                :per_page => '1000',
                :xhr_paging => true

      end
    end
  end
end
