module Refinery
  module Headline2s
    class Headline2sController < ::ApplicationController

      before_filter :find_all_headline_2s
      before_filter :find_page

      def index
        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @headline_2 in the line below:
        present(@page)
      end

      def show
        @headline_2 = Headline2.find(params[:id])

        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @headline_2 in the line below:
        present(@page)
      end

    protected

      def find_all_headline_2s
        @headline_2s = Headline2.order('position ASC')
      end

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/headline_2s").first
      end

    end
  end
end
