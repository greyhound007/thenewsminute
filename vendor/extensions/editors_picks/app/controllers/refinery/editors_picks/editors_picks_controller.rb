module Refinery
  module EditorsPicks
    class EditorsPicksController < ::ApplicationController

      before_filter :find_all_editors_picks
      before_filter :find_page

      def index
        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @editors_pick in the line below:
        present(@page)
      end

      def show
        @editors_pick = EditorsPick.find(params[:id])

        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @editors_pick in the line below:
        present(@page)
      end

    protected

      def find_all_editors_picks
        @editors_picks = EditorsPick.order('position ASC')
      end

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/editors_picks").first
      end

    end
  end
end
