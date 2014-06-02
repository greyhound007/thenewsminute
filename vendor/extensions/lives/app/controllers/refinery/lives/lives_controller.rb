module Refinery
  module Lives
    class LivesController < ::ApplicationController

      before_filter :find_all_lives
      before_filter :find_page

      def index
        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @life in the line below:
        present(@page)
      end

      def show
        @life = Life.find(params[:id])

        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @life in the line below:
        present(@page)
      end

    protected

      def find_all_lives
        @lives = Life.order('position ASC')
      end

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/lives").first
      end

    end
  end
end
