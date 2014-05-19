module Refinery
  module Finances
    module Admin
      class FinancesController < ::Refinery::AdminController

        crudify :'refinery/finances/finance',
                :title_attribute => 'Main_headline',
                :xhr_paging => true

      end
    end
  end
end
