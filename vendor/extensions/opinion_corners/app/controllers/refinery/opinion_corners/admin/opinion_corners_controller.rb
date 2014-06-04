module Refinery
  module OpinionCorners
    module Admin
      class OpinionCornersController < ::Refinery::AdminController

        crudify :'refinery/opinion_corners/opinion_corner',
                :title_attribute => 'headline',
                :per_page => '1000',
                :xhr_paging => true

      end
    end
  end
end
