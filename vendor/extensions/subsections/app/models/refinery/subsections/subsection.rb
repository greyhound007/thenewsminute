module Refinery
  module Subsections
    class Subsection < Refinery::Core::BaseModel
      self.table_name = 'refinery_subsections'

      attr_accessible :Topic, :headline_1, :image_1_id, :link_1, :news_1_headline_1, :news_1_link_1, :news_1_source_1, :news_1_headline_2, :news_1_link_2, :news_1_source_2, :news_1_headline_3, :news_1_link_3, :news_1_source_3, :news_1_headline_4, :news_1_link_4, :news_1_source_4, :news_1_headline_5, :news_1_link_5, :news_1_source_5, :rank_1, :headline_2, :image_2_id, :link_2, :news_2_headline_1, :news_2_link_1, :news_2_source_1, :news_2_headline_2, :news_2_link_2, :news_2_source_2, :news_2_headline_3, :news_2_link_3, :news_2_source_3, :news_2_headline_4, :news_2_link_4, :news_2_source_4, :news_2_headline_5, :news_2_link_5, :rank_2, :headline_3, :image_3_id, :link_3, :news_3_headline_1, :news_3_link_1, :news_3_source_1, :news_3_headline_2, :news_3_link_2, :news_3_source_2, :news_3_headline_3, :news_3_link_3, :news_3_source_3, :news_3_headline_4, :news_3_link_4, :news_3_source_4, :news_3_headline_5, :news_3_link_5, :news_2_source_5, :rank_4, :headline_4, :image_4_id, :link_4, :news_4_headline_1, :news_4_link_1, :news_4_source_1, :news_4_headline_2, :news_4_link_2, :news_4_source_2, :news_4_headline_3, :news_4_link_3, :news_4_source_3, :news_4_headline_4, :news_4_link_4, :news_4_source_4, :news_4_headline_5, :news_4_link_5, :news_4_source_5, :rank_4, :headline_5, :image_5_id, :link_5, :rank_5, :headline_6, :image_6_id, :link_6, :rank_6, :headline_7, :image_7_id, :link_7, :rank_7, :headline_8, :image_8_id, :link_8, :rank_8, :position

      validates :Topic, :presence => true, :uniqueness => true

      belongs_to :image_1, :class_name => '::Refinery::Image'

      belongs_to :image_2, :class_name => '::Refinery::Image'

      belongs_to :image_3, :class_name => '::Refinery::Image'

      belongs_to :image_4, :class_name => '::Refinery::Image'

      belongs_to :image_5, :class_name => '::Refinery::Image'

      belongs_to :image_6, :class_name => '::Refinery::Image'

      belongs_to :image_7, :class_name => '::Refinery::Image'

      belongs_to :image_8, :class_name => '::Refinery::Image'
      
        extend FriendlyId
        friendly_id :Topic
        
    end
  end
end
