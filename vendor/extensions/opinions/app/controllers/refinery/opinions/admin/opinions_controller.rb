module Refinery
  module Opinions
    module Admin
      class OpinionsController < ::Refinery::AdminController

        crudify :'refinery/opinions/opinion',
                :title_attribute => 'headline',
                :xhr_paging => true

      end
    end
  end
end
