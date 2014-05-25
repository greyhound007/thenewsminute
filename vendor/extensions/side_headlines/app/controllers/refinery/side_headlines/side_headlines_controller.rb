module Refinery
  module SideHeadlines
    class SideHeadlinesController < ::ApplicationController

      before_filter :find_all_side_headlines
      before_filter :find_page

      def index
        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @side_headline in the line below:
        present(@page)
      end

      def show
        @side_headline = SideHeadline.find(params[:id])

        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @side_headline in the line below:
        present(@page)
      end

    protected

      def find_all_side_headlines
        @side_headlines = SideHeadline.order('position ASC')
      end

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/side_headlines").first
      end

    end
  end
end
