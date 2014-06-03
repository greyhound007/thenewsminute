module Refinery
  module Telanganas
    module Admin
      class TelanganasController < ::Refinery::AdminController

        crudify :'refinery/telanganas/telangana',
                :title_attribute => 'headline',
                :per_page => '1000',
                :xhr_paging => true

      end
    end
  end
end
