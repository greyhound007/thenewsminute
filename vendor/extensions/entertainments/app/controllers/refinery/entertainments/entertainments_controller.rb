module Refinery
  module Entertainments
    class EntertainmentsController < ::ApplicationController

      before_filter :find_all_entertainments
      before_filter :find_page

      def index
        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @entertainment in the line below:
        present(@page)
      end

      def show
        @entertainment = Entertainment.find(params[:id])

        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @entertainment in the line below:
        present(@page)
      end

    protected

      def find_all_entertainments
        @entertainments = Entertainment.order('position ASC')
      end

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/entertainments").first
      end

    end
  end
end
