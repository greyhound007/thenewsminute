module Refinery
  module Ears
    class EarsController < ::ApplicationController

      before_filter :find_all_ears
      before_filter :find_page

      def index
        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @ear in the line below:
        present(@page)
      end

      def show
        @ear = Ear.find(params[:id])

        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @ear in the line below:
        present(@page)
      end

    protected

      def find_all_ears
        @ears = Ear.order('position ASC')
      end

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/ears").first
      end

    end
  end
end
