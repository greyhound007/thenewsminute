module Refinery
  module BasePageRedirects
    class BasePageRedirectsController < ::ApplicationController

      before_filter :find_all_base_page_redirects
      before_filter :find_page

      def index
        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @base_page_redirect in the line below:
        present(@page)
      end

      def show
        @base_page_redirect = BasePageRedirect.find(params[:id])

        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @base_page_redirect in the line below:
        present(@page)
      end

    protected

      def find_all_base_page_redirects
        @base_page_redirects = BasePageRedirect.order('position ASC')
      end

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/base_page_redirects").first
      end

    end
  end
end
