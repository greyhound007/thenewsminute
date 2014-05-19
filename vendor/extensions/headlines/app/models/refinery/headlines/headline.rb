module Refinery
  module Headlines
    class Headline < Refinery::Core::BaseModel
      self.table_name = 'refinery_headlines'

      attr_accessible :main_headline, :main_photo_id, :main_blurb, :main_link, :main_story_link_headline_1, :main_story_link_1, :main_story_link_source_1, :main_story_link_headline_2, :main_story_link_2, :main_story_link_source_2, :main_story_link_headline_3, :main_story_link_3, :main_story_link_source_3, :main_story_link_headline_4, :main_story_link_4, :main_story_link_source_4, :position

      validates :main_headline, :presence => true, :uniqueness => true

      belongs_to :main_photo, :class_name => '::Refinery::Image'
    end
  end
end
