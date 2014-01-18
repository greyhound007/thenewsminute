module Refinery
  module Politics
    class PoliticsController < ::ApplicationController

      before_filter :find_all_politics
      before_filter :find_page

      def index
        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @politic in the line below:
        present(@page)
      end

      def show
        @politic = Politic.find(params[:id])

        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @politic in the line below:
        present(@page)
      end

    protected

      def find_all_politics
        @politics = Politic.order('position ASC')
      end

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/politics").first
      end

    end
  end
end
