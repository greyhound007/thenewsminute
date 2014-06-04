module Refinery
  module Politics
    class PoliticsController < ::ApplicationController

      before_filter :find_all_politics
      before_filter :find_page

      def index
        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @politic in the line below:
        present(@page)
          @politic=Refinery::Politics::Politic.order('position DESC')
          @editors_pick=Refinery::EditorsPicks::EditorsPick.order('position ASC')
          @side_headline=Refinery::SideHeadlines::SideHeadline.order('position ASC')
          @editors_pick_1=@editors_pick[0]
          @editors_pick_2=@editors_pick[1]
          @editors_pick_3=@editors_pick[2]
          @editors_pick_4=@editors_pick[3]
          
          @south=Refinery::SouthernMinutes::SouthernMinute.order('position ASC')
          @south_1=@south[0]
          @south_2=@south[1]
          @south_3=@south[2]
          @south_4=@south[3]
          @elephants=Refinery::Elephants::Elephant.order('position ASC')
          @elephant=@elephants.first
          @ears=Refinery::Ears::Ear.order('position ASC')
          @ear=@ears.first

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
