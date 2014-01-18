module Refinery
  module Technologies
    class Technology < Refinery::Core::BaseModel
      self.table_name = 'refinery_technologies'

      attr_accessible :headline_1, :photo_1_id, :summary_1, :news_1_source_1, :news_1_link_1, :news_1_source_2, :news_1_link_2, :news_1_source_3, :news_1_link_3, :news_1_source_4, :news_1_link_4, :news_1_source_5, :news_1_link_5, :headline_2, :photo_2_id, :summary_2, :news_2_source_1, :news_2_link_1, :news_2_source_2, :news_2_link_2, :news_2_source_3, :news_2_link_3, :news_2_source_4, :news_2_link_4, :news_2_source_5, :news_2_link_5, :headline_3, :photo_3_id, :summary_3, :news_3_source_1, :news_3_link_1, :news_3_source_2, :news_3_link_2, :news_3_source_3, :news_3_link_3, :news_3_source_4, :news_3_link_4, :news_3_source_5, :news_3_link_5, :headline_4, :photo_4_id, :summary_4, :news_4_source_1, :news_4_link_1, :news_4_source_2, :news_4_link_2, :news_4_source_3, :news_4_link_3, :news_4_source_4, :news_4_link_4, :news_4_source_5, :news_4_link_5, :headline_5, :photo_5_id, :summary_5, :news_5_source_1, :news_5_link_1, :news_5_source_2, :news_5_link_2, :news_5_source_3, :news_5_link_3, :news_5_source_4, :news_5_link_4, :news_5_source_5, :news_5_link_5, :position

      validates :headline_1, :presence => true, :uniqueness => true

      belongs_to :photo_1, :class_name => '::Refinery::Image'

      belongs_to :photo_2, :class_name => '::Refinery::Image'

      belongs_to :photo_3, :class_name => '::Refinery::Image'

      belongs_to :photo_4, :class_name => '::Refinery::Image'

      belongs_to :photo_5, :class_name => '::Refinery::Image'
    end
  end
end
