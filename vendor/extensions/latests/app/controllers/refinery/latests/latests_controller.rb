module Refinery
  module Latests
    class LatestsController < ::ApplicationController

      before_filter :find_all_latests
      before_filter :find_page

      def index
        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @latest in the line below:
        present(@page)
      end

      def show
        @latest = Latest.find(params[:id])

        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @latest in the line below:
        present(@page)
      end

    protected

      def find_all_latests
        @latests = Latest.order('position ASC')
      end

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/latests").first
      end

    end
  end
end
