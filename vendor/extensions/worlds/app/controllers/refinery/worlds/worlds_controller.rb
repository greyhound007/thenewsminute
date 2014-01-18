module Refinery
  module Worlds
    class WorldsController < ::ApplicationController

      before_filter :find_all_worlds
      before_filter :find_page

      def index
        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @world in the line below:
        present(@page)
      end

      def show
        @world = World.find(params[:id])

        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @world in the line below:
        present(@page)
      end

    protected

      def find_all_worlds
        @worlds = World.order('position ASC')
      end

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/worlds").first
      end

    end
  end
end
