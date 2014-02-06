module Refinery
  module Subsections
    module Admin
      class SubsectionsController < ::Refinery::AdminController

        crudify :'refinery/subsections/subsection',
                :title_attribute => 'Topic',
                :xhr_paging => true

      end
    end
  end
end
