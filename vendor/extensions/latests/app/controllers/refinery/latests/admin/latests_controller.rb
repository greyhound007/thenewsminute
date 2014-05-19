module Refinery
  module Latests
    module Admin
      class LatestsController < ::Refinery::AdminController

        crudify :'refinery/latests/latest',
                :title_attribute => 'headline',
                :xhr_paging => true

      end
    end
  end
end
