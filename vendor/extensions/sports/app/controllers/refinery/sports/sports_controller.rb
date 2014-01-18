module Refinery
  module Sports
    class SportsController < ::ApplicationController

      before_filter :find_all_sports
      before_filter :find_page

      def index
        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @sport in the line below:
        present(@page)
      end

      def show
        @sport = Sport.find(params[:id])

        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @sport in the line below:
        present(@page)
      end

    protected

      def find_all_sports
        @sports = Sport.order('position ASC')
      end

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/sports").first
      end

    end
  end
end
