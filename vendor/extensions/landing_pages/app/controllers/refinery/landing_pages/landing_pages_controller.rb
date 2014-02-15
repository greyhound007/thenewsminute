module Refinery
  module LandingPages
    class LandingPagesController < ::ApplicationController

      before_filter :find_all_landing_pages
      before_filter :find_page

      def index
        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @landing_page in the line below:
        present(@page)
      end

      def show
        @landing_page = LandingPage.find(params[:id])

        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @landing_page in the line below:
        present(@page)
      end

    protected

      def find_all_landing_pages
        @landing_pages = LandingPage.order('position ASC')
      end

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/landing_pages").first
      end

    end
  end
end
