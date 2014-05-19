module Refinery
  module Worlds
    module Admin
      class WorldsController < ::Refinery::AdminController

        crudify :'refinery/worlds/world',
                :title_attribute => 'Main_headline',
                :xhr_paging => true

      end
    end
  end
end
