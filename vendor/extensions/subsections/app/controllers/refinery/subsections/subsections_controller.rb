module Refinery
  module Subsections
    class SubsectionsController < ::ApplicationController

      before_filter :find_all_subsections
      before_filter :find_page

      def index
        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @subsection in the line below:
        present(@page)
      end

      def show
        @subsection = Subsection.find(params[:id])
          @landing=Refinery::Redirects::Redirect.find(1)
          @mainpage = Refinery::Mainpages::Mainpage.find(@landing.Homepage_Headline)

        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @subsection in the line below:
        present(@page)
      end

    protected

      def find_all_subsections
        @subsections = Subsection.order('position ASC')
      end

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/subsections").first
      end

    end
  end
end
