module Refinery
  module Headline2s
    module Admin
      class Headline2sController < ::Refinery::AdminController

        crudify :'refinery/headline2s/headline_2',
                :title_attribute => 'headline',
                :xhr_paging => true

      end
    end
  end
end
