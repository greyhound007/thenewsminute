module Refinery
  module Stories
    class StoriesController < ::ApplicationController

      before_filter :find_all_stories
      before_filter :find_page

      def index
        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @story in the line below:
        present(@page)
      end

      def show
        @story = Story.find(params[:id])

        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @story in the line below:
        present(@page)
      end

    protected

      def find_all_stories
        @stories = Story.order('position ASC')
      end

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/stories").first
      end

    end
  end
end
