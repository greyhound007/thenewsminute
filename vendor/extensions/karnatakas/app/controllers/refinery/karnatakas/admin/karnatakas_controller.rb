module Refinery
  module Karnatakas
    module Admin
      class KarnatakasController < ::Refinery::AdminController

        crudify :'refinery/karnatakas/karnataka',
                :title_attribute => 'headline',
                :xhr_paging => true

      end
    end
  end
end
