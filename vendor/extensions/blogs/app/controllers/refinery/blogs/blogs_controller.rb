module Refinery
  module Blogs
    class BlogsController < ::ApplicationController

      before_filter :find_all_blogs
      before_filter :find_page

      def index
        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @blog in the line below:
        present(@page)
      end

      def show
        @blog = Blog.find(params[:id])

        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @blog in the line below:
        present(@page)
      end

    protected

      def find_all_blogs
        @blogs = Blog.order('position ASC')
      end

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/blogs").first
      end

    end
  end
end
