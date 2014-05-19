module Refinery
  module EditorsPicks
    module Admin
      class EditorsPicksController < ::Refinery::AdminController

        crudify :'refinery/editors_picks/editors_pick',
                :title_attribute => 'headline',
                :xhr_paging => true

      end
    end
  end
end
