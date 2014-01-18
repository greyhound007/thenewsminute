module Refinery
  module Homepages
    class Homepage < Refinery::Core::BaseModel
      self.table_name = 'refinery_homepages'

      attr_accessible :main_story_headline_1, :main_story_photo_1_id, :main_story_blurb_1, :main_story_link_1, :main_story_headline_2, :main_story_photo_2_id, :main_story_blurb_2, :main_story_link_2, :latest_photo_1_id, :latest_headline_1, :latest_link_1, :latest_photo_2_id, :latest_headline_2, :latest_link_2, :latest_photo_3_id, :latest_headline_3, :latest_link_3, :politics_photo_id, :politics_headline_1, :politics_link_1, :politics_headline_2, :politics_link_2, :politics_headline_3, :politics_link_3, :news_photo_id, :news_headline_1, :news_link_1, :news_headline_2, :news_link_2, :news_headline_3, :news_link_3, :sports_photo_id, :sports_headline_1, :sports_link_1, :sports_headline_2, :sports_link_2, :sports_headline_3, :sports_link_3, :entertainment_photo_id, :entertainment_headline_1, :entertainment_link_1, :entertainment_headline_2, :entertainment_link_2, :entertainment_headline_3, :entertainment_link_3, :technology_photo_id, :technology_headline_1, :technology_link_1, :technology_headline_2, :technology_link_2, :technology_headline_3, :technology_link_3, :world_photo_id, :world_headline_1, :world_link_1, :world_headline_2, :world_link_2, :world_headline_3, :world_link_3, :simply_south_photo_id, :simply_south_headline_1, :simply_south_link_1, :simply_south_headline_2, :simply_south_link_2, :simply_south_headline_3, :simply_south_link_3, :editorial_caricature_1_id, :editorial_heading_1, :editorial_blurb_1, :editorial_caricature_2_id, :editorial_heading_2, :editorial_blurb_2, :whats_on_my_mind_photo_1_id, :whats_on_my_mind_headline_1, :whats_on_my_mind_link_1, :whats_on_my_mind_photo_2_id, :whats_on_my_mind_headline_2, :whats_on_my_mind_link_2, :odd_one_photo_id, :odd_one_headline, :odd_one_blurb, :blog_we_like_cartooon_1_id, :blog_we_like_headline1, :blog_we_like_link1, :blog_we_like_cartooon_2_id, :blog_we_like_headline2, :blog_we_like_link2, :blog_we_like_cartooon_3_id, :blog_we_like_headline3, :blog_we_like_link3, :blog_we_like_cartooon_4_id, :blog_we_like_headline4, :blog_we_like_link4, :blog_we_like_cartooon_5_id, :blog_we_like_headline5, :blog_we_like_link5, :position

      validates :main_story_headline_1, :presence => true, :uniqueness => true

      belongs_to :main_story_photo_1, :class_name => '::Refinery::Image'

      belongs_to :main_story_photo_2, :class_name => '::Refinery::Image'

      belongs_to :latest_photo_1, :class_name => '::Refinery::Image'

      belongs_to :latest_photo_2, :class_name => '::Refinery::Image'

      belongs_to :latest_photo_3, :class_name => '::Refinery::Image'

      belongs_to :politics_photo, :class_name => '::Refinery::Image'

      belongs_to :news_photo, :class_name => '::Refinery::Image'

      belongs_to :sports_photo, :class_name => '::Refinery::Image'

      belongs_to :entertainment_photo, :class_name => '::Refinery::Image'

      belongs_to :technology_photo, :class_name => '::Refinery::Image'

      belongs_to :world_photo, :class_name => '::Refinery::Image'

      belongs_to :simply_south_photo, :class_name => '::Refinery::Image'

      belongs_to :editorial_caricature_1, :class_name => '::Refinery::Image'

      belongs_to :editorial_caricature_2, :class_name => '::Refinery::Image'

      belongs_to :whats_on_my_mind_photo_1, :class_name => '::Refinery::Image'

      belongs_to :whats_on_my_mind_photo_2, :class_name => '::Refinery::Image'

      belongs_to :odd_one_photo, :class_name => '::Refinery::Image'

      belongs_to :blog_we_like_cartooon_1, :class_name => '::Refinery::Image'

      belongs_to :blog_we_like_cartooon_2, :class_name => '::Refinery::Image'

      belongs_to :blog_we_like_cartooon_3, :class_name => '::Refinery::Image'

      belongs_to :blog_we_like_cartooon_4, :class_name => '::Refinery::Image'

      belongs_to :blog_we_like_cartooon_5, :class_name => '::Refinery::Image'
    end
  end
end
