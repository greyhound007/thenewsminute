module Refinery
  module Sports
    module Admin
      class SportsController < ::Refinery::AdminController

        crudify :'refinery/sports/sport',
                :title_attribute => 'Main_headline',
                :xhr_paging => true

      end
    end
  end
end
