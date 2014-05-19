module Refinery
  module SouthernMinutes
    module Admin
      class SouthernMinutesController < ::Refinery::AdminController

        crudify :'refinery/southern_minutes/southern_minute',
                :title_attribute => 'headline',
                :xhr_paging => true

      end
    end
  end
end
