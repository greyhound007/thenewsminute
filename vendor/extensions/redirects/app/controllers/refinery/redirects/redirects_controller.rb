module Refinery
  module Redirects
    class RedirectsController < ::ApplicationController

      before_filter :find_all_redirects
      before_filter :find_page

      def index
        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @redirect in the line below:
        present(@page)
      end

      def show
        @redirect = Redirect.find(params[:id])

        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @redirect in the line below:
        present(@page)
      end

    protected

      def find_all_redirects
        @redirects = Redirect.order('position ASC')
      end

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/redirects").first
      end

    end
  end
end
