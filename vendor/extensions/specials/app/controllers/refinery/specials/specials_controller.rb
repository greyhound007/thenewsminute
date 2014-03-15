module Refinery
  module Specials
    class SpecialsController < ::ApplicationController

      before_filter :find_all_specials
      before_filter :find_page

      def index
        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @special in the line below:
        present(@page)
      end

      def show
        @special = Special.find(params[:id])

        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @special in the line below:
        present(@page)
      end

    protected

      def find_all_specials
        @specials = Special.order('position ASC')
      end

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/specials").first
      end

    end
  end
end
