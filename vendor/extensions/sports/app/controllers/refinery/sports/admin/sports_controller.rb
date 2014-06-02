module Refinery
  module Sports
    module Admin
      class SportsController < ::Refinery::AdminController

        crudify :'refinery/sports/sport',
                :title_attribute => 'Main_headline',
                :per_page => '1000',
                :xhr_paging => true

      end
    end
  end
end
