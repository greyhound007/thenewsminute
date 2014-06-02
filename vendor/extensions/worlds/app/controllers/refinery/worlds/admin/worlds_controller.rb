module Refinery
  module Worlds
    module Admin
      class WorldsController < ::Refinery::AdminController

        crudify :'refinery/worlds/world',
                :title_attribute => 'Main_headline',
                :per_page => '1000',
                :xhr_paging => true

      end
    end
  end
end
