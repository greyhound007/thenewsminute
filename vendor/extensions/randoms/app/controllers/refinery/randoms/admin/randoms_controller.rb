module Refinery
  module Randoms
    module Admin
      class RandomsController < ::Refinery::AdminController

        crudify :'refinery/randoms/random',
                :title_attribute => 'headline',
                :per_page => '1000',
                :xhr_paging => true

      end
    end
  end
end
