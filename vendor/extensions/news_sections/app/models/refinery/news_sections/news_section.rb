module Refinery
  module NewsSections
    class NewsSection < Refinery::Core::BaseModel
      self.table_name = 'refinery_news_sections'

      attr_accessible :Main_headline, :photo_id, :youtube, :image_blurb, :blurb, :summary, :tags, :headline_1, :link_1, :source_1, :headline_2, :link_2, :source_2, :headline_3, :link_3, :source_3, :headline_4, :link_4, :source_4, :headline_5, :link_5, :source_5, :headline_6, :link_6, :source_6, :headline_7, :link_7, :source_7, :headline_8, :link_8, :source_8, :position

      validates :Main_headline, :presence => true, :uniqueness => true

      belongs_to :photo, :class_name => '::Refinery::Image'
    end
  end
end
