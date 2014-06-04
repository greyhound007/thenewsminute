module Refinery
  module Politics
    module Admin
      class PoliticsController < ::Refinery::AdminController

        crudify :'refinery/politics/politic',
                :title_attribute => 'Main_headline',
                :per_page => '1000',
                :xhr_paging => true

      end
    end
  end
end
