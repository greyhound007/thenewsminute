module Refinery
  module BasePageRedirects
    module Admin
      class BasePageRedirectsController < ::Refinery::AdminController

        crudify :'refinery/base_page_redirects/base_page_redirect',
                :title_attribute => 'Homepage_Headline',
                :xhr_paging => true

      end
    end
  end
end
