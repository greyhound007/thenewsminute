module Refinery
  module Entertainments
    module Admin
      class EntertainmentsController < ::Refinery::AdminController

        crudify :'refinery/entertainments/entertainment',
                :title_attribute => 'Main_headline',
                :per_page => '1000',
                :xhr_paging => true

      end
    end
  end
end
