module Refinery
  module Mainpages
    class MainpagesController < ::ApplicationController

      before_filter :find_all_mainpages
      before_filter :find_page

      def index
        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @mainpage in the line below:
        present(@page)
      end

      def show
          @landing=Refinery::Redirects::Redirect.find(1)
        @mainpage = Mainpage.find(params[:id])
          @landing=Refinery::Redirects::Redirect.find(1)
        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @mainpage in the line below:
        present(@page)
      end

    protected

      def find_all_mainpages
        @mainpages = Mainpage.order('position ASC')
      end

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/mainpages").first
      end

    end
  end
end
