module Refinery
  module OpinionMainpages
    class OpinionMainpagesController < ::ApplicationController

      before_filter :find_all_opinion_mainpages
      before_filter :find_page

      def index
        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @opinion_mainpage in the line below:
        present(@page)
      end

      def show
        @opinion_mainpage = OpinionMainpage.find(params[:id])

        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @opinion_mainpage in the line below:
        present(@page)
      end

    protected

      def find_all_opinion_mainpages
        @opinion_mainpages = OpinionMainpage.order('position ASC')
      end

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/opinion_mainpages").first
      end

    end
  end
end
