module Refinery
  module Randoms
    class RandomsController < ::ApplicationController

      before_filter :find_all_randoms
      before_filter :find_page

      def index
        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @random in the line below:
          @landing=Refinery::Redirects::Redirect.find(1)
          @mainpage = Refinery::Mainpages::Mainpage.find(@landing.Homepage_Headline)
          

        present(@page)
      end

      def show
        @random = Random.find(params[:id])

        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @random in the line below:
        present(@page)
      end

    protected

      def find_all_randoms
        @randoms = Random.order('position ASC')
      end

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/randoms").first
      end

    end
  end
end
