module Refinery
  module Entertainments
    module Admin
      class EntertainmentsController < ::Refinery::AdminController

        crudify :'refinery/entertainments/entertainment',
                :title_attribute => 'Main_headline',
                :xhr_paging => true

      end
    end
  end
end
