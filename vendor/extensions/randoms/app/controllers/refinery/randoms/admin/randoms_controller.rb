module Refinery
  module Randoms
    module Admin
      class RandomsController < ::Refinery::AdminController

        crudify :'refinery/randoms/random',
                :title_attribute => 'headline',
                :xhr_paging => true

      end
    end
  end
end
