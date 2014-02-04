module Refinery
  module Homepages
    class Homepage < Refinery::Core::BaseModel
      self.table_name = 'refinery_homepages'

      attr_accessible :main_headline, :main_photo_id, :main_blurb, :main_link, :main_story_link_headline_1, :main_story_link_1, :main_story_link_source_1, :main_story_link_headline_2, :main_story_link_2, :main_story_link_source_2, :main_story_link_headline_3, :main_story_link_3, :main_story_link_source_3, :main_story_link_headline_4, :main_story_link_4, :main_story_link_source_4, :main_headline_2, :main_photo_2_id, :main_blurb_2, :main_link_2, :latest_photo_1_id, :latest_headline_1, :latest_link_1, :latest_photo_2_id, :latest_headline_2, :latest_link_2, :latest_photo_3_id, :latest_headline_3, :latest_link_3, :latest_photo_4_id, :latest_headline_4, :latest_link_4, :politics_photo_id, :politics_headline, :politics_link, :politics_headline_1, :politics_link_1, :politics_headline_2, :politics_link_2, :politics_headline_3, :politics_link_3, :news_photo_id, :news_headline, :news_link, :news_headline_1, :news_link_1, :news_headline_2, :news_link_2, :news_headline_3, :news_link_3, :sports_photo_id, :sports_headline, :sports_link, :sports_headline_1, :sports_link_1, :sports_headline_2, :sports_link_2, :sports_headline_3, :sports_link_3, :entertainment_photo_id, :entertainment_headline, :entertainment_link, :entertainment_headline_1, :entertainment_link_1, :entertainment_headline_2, :entertainment_link_2, :entertainment_headline_3, :entertainment_link_3, :technology_photo_id, :technology_headline, :technology_link, :technology_headline_1, :technology_link_1, :technology_headline_2, :technology_link_2, :technology_headline_3, :technology_link_3, :money_photo_id, :money_headline, :money_link, :money_headline_1, :money_link_1, :money_headline_2, :money_link_2, :money_headline_3, :money_link_3, :world_photo_left_id, :world_headline_left, :world_link_left, :world_headline_1_left, :world_link_1_left, :world_headline_2_left, :world_link_2_left, :world_headline_3_left, :world_link_3_left, :world_photo_right_id, :world_headline_right, :world_link_right, :world_headline_1_right, :world_link_1_right, :world_headline_2_right, :world_link_2_right, :world_headline_3_right, :world_link_3_right, :southern_minute_photo_1_id, :southern_minute_headline_1, :southern_minute_link_1, :southern_minute_photo_2_id, :southern_minute_headline_2, :southern_minute_link_2, :southern_minute_photo_3_id, :southern_minute_headline_3, :southern_minute_link_3, :southern_minute_photo_4_id, :southern_minute_headline_4, :southern_minute_link_4, :columnist_caricature_1_id, :columnist_headline_1, :columnist_link_1, :columnist_name_1, :columnist_caricature_2_id, :columnist_headline_2, :columnist_link_2, :columnist_name_2, :columnist_caricature_3_id, :columnist_headline_3, :columnist_link_3, :columnist_name_3, :columnist_caricature_4_id, :columnist_headline_4, :columnist_link_4, :columnist_name_4, :columnist_caricature_5_id, :columnist_headline_5, :columnist_link_5, :columnist_name_5, :editorial_caricature_1_id, :editorial_heading_1, :editorial_author_1, :editorial_link_1, :editorial_caricature_2_id, :editorial_heading_2, :editorial_author_2, :editorial_link_2, :voices_1_id, :voices_headline_1, :voices_link_1, :voices_photo_2_id, :voices_headline_2, :voices_link_2, :random_photo_1_id, :random_headline_1, :random_link_1, :random_photo_2_id, :random_headline_2, :random_link_2, :random_photo_3_id, :random_headline_3, :random_link_3, :random_photo_4_id, :random_headline_4, :random_link_4, :not_to_miss_headline_1, :not_to_miss_link_1, :not_to_miss_headline_2, :not_to_miss_link_2, :not_to_miss_headline_3, :not_to_miss_link_3, :not_to_miss_headline_4, :not_to_miss_link_4, :position

      validates :main_headline, :presence => true, :uniqueness => true

      belongs_to :main_photo, :class_name => '::Refinery::Image'

      belongs_to :main_photo_2, :class_name => '::Refinery::Image'

      belongs_to :latest_photo_1, :class_name => '::Refinery::Image'

      belongs_to :latest_photo_2, :class_name => '::Refinery::Image'

      belongs_to :latest_photo_3, :class_name => '::Refinery::Image'

      belongs_to :latest_photo_4, :class_name => '::Refinery::Image'

      belongs_to :politics_photo, :class_name => '::Refinery::Image'

      belongs_to :news_photo, :class_name => '::Refinery::Image'

      belongs_to :sports_photo, :class_name => '::Refinery::Image'

      belongs_to :entertainment_photo, :class_name => '::Refinery::Image'

      belongs_to :technology_photo, :class_name => '::Refinery::Image'

      belongs_to :money_photo, :class_name => '::Refinery::Image'

      belongs_to :world_photo_left, :class_name => '::Refinery::Image'

      belongs_to :world_photo_right, :class_name => '::Refinery::Image'

      belongs_to :southern_minute_photo_1, :class_name => '::Refinery::Image'

      belongs_to :southern_minute_photo_2, :class_name => '::Refinery::Image'

      belongs_to :southern_minute_photo_3, :class_name => '::Refinery::Image'

      belongs_to :southern_minute_photo_4, :class_name => '::Refinery::Image'

      belongs_to :columnist_caricature_1, :class_name => '::Refinery::Image'

      belongs_to :columnist_caricature_2, :class_name => '::Refinery::Image'

      belongs_to :columnist_caricature_3, :class_name => '::Refinery::Image'

      belongs_to :columnist_caricature_4, :class_name => '::Refinery::Image'

      belongs_to :columnist_caricature_5, :class_name => '::Refinery::Image'

      belongs_to :editorial_caricature_1, :class_name => '::Refinery::Image'

      belongs_to :editorial_caricature_2, :class_name => '::Refinery::Image'

      belongs_to :voices_1, :class_name => '::Refinery::Image'

      belongs_to :voices_photo_2, :class_name => '::Refinery::Image'

      belongs_to :random_photo_1, :class_name => '::Refinery::Image'

      belongs_to :random_photo_2, :class_name => '::Refinery::Image'

      belongs_to :random_photo_3, :class_name => '::Refinery::Image'

      belongs_to :random_photo_4, :class_name => '::Refinery::Image'
    end
  end
end
