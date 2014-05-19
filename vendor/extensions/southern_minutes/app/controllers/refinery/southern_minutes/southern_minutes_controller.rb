module Refinery
  module SouthernMinutes
    class SouthernMinutesController < ::ApplicationController

      before_filter :find_all_southern_minutes
      before_filter :find_page

      def index
        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @southern_minute in the line below:
        present(@page)
      end

      def show
        @southern_minute = SouthernMinute.find(params[:id])

        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @southern_minute in the line below:
        present(@page)
      end

    protected

      def find_all_southern_minutes
        @southern_minutes = SouthernMinute.order('position ASC')
      end

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/southern_minutes").first
      end

    end
  end
end
