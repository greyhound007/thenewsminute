module Refinery
  module Karnatakas
    module Admin
      class KarnatakasController < ::Refinery::AdminController

        crudify :'refinery/karnatakas/karnataka',
                :title_attribute => 'headline',
                :per_page => '1000',
                :xhr_paging => true

      end
    end
  end
end
