module Refinery
  module Entertainments
    module Admin
      class EntertainmentsController < ::Refinery::AdminController

        crudify :'refinery/entertainments/entertainment',
                :title_attribute => 'headline_1',
                :xhr_paging => true

      end
    end
  end
end
