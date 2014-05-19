module Refinery
  module OpinionMainpages
    module Admin
      class OpinionMainpagesController < ::Refinery::AdminController

        crudify :'refinery/opinion_mainpages/opinion_mainpage',
                :title_attribute => 'headline',
                :xhr_paging => true

      end
    end
  end
end
