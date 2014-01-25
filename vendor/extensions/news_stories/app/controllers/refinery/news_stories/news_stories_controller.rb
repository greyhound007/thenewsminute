module Refinery
  module NewsStories
    class NewsStoriesController < ::ApplicationController

      before_filter :find_all_news_stories
      before_filter :find_page

      def index
        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @news_story in the line below:
        present(@page)
      end

      def show
        @news_story = NewsStory.find(params[:id])

        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @news_story in the line below:
        present(@page)
      end

    protected

      def find_all_news_stories
        @news_stories = NewsStory.order('position ASC')
      end

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/news_stories").first
      end

    end
  end
end
