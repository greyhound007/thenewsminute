module Refinery
  module Homepages
    class HomepagesController < ::ApplicationController

      before_filter :find_all_homepages
      before_filter :find_page

      def index
        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @homepage in the line below:
        present(@page)
      end

      def show
        @homepage = Homepage.find(params[:id])

        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @homepage in the line below:
        present(@page)
      end

    protected

      def find_all_homepages
        @homepages = Homepage.order('position ASC')
      end

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/homepages").first
      end

    end
  end
end
