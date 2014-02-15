module Refinery
  module Redirects
    module Admin
      class RedirectsController < ::Refinery::AdminController

        crudify :'refinery/redirects/redirect',
                :title_attribute => 'Homepage_Headline',
                :xhr_paging => true

      end
    end
  end
end
