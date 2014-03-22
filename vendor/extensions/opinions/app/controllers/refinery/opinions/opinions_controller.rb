module Refinery
  module Opinions
    class OpinionsController < ::ApplicationController

      before_filter :find_all_opinions
      before_filter :find_page

      def index
        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @opinion in the line below:
        present(@page)
          @landing=Refinery::Redirects::Redirect.find(1)
          @mainpage = Refinery::Mainpages::Mainpage.find(@landing.Homepage_Headline)
      end

      def show
        @opinion = Opinion.find(params[:id])

        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @opinion in the line below:
        present(@page)
      end

    protected

      def find_all_opinions
        @opinions = Opinion.order('position ASC')
      end

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/opinions").first
      end

    end
  end
end
