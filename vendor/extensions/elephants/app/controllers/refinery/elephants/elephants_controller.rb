module Refinery
  module Elephants
    class ElephantsController < ::ApplicationController

      before_filter :find_all_elephants
      before_filter :find_page

      def index
        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @elephant in the line below:
        present(@page)
      end

      def show
        @elephant = Elephant.find(params[:id])

        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @elephant in the line below:
        present(@page)
      end

    protected

      def find_all_elephants
        @elephants = Elephant.order('position ASC')
      end

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/elephants").first
      end

    end
  end
end
