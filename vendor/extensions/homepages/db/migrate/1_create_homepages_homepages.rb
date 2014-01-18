class CreateHomepagesHomepages < ActiveRecord::Migration

  def up
    create_table :refinery_homepages do |t|
      t.string :main_story_headline_1
      t.integer :main_story_photo_1_id
      t.string :main_story_blurb_1
      t.string :main_story_link_1
      t.string :main_story_headline_2
      t.integer :main_story_photo_2_id
      t.string :main_story_blurb_2
      t.string :main_story_link_2
      t.integer :latest_photo_1_id
      t.string :latest_headline_1
      t.string :latest_link_1
      t.integer :latest_photo_2_id
      t.string :latest_headline_2
      t.string :latest_link_2
      t.integer :latest_photo_3_id
      t.string :latest_headline_3
      t.string :latest_link_3
      t.integer :politics_photo_id
      t.string :politics_headline_1
      t.string :politics_link_1
      t.string :politics_headline_2
      t.string :politics_link_2
      t.string :politics_headline_3
      t.string :politics_link_3
      t.integer :news_photo_id
      t.string :news_headline_1
      t.string :news_link_1
      t.string :news_headline_2
      t.string :news_link_2
      t.string :news_headline_3
      t.string :news_link_3
      t.integer :sports_photo_id
      t.string :sports_headline_1
      t.string :sports_link_1
      t.string :sports_headline_2
      t.string :sports_link_2
      t.string :sports_headline_3
      t.string :sports_link_3
      t.integer :entertainment_photo_id
      t.string :entertainment_headline_1
      t.string :entertainment_link_1
      t.string :entertainment_headline_2
      t.string :entertainment_link_2
      t.string :entertainment_headline_3
      t.string :entertainment_link_3
      t.integer :technology_photo_id
      t.string :technology_headline_1
      t.string :technology_link_1
      t.string :technology_headline_2
      t.string :technology_link_2
      t.string :technology_headline_3
      t.string :technology_link_3
      t.integer :world_photo_id
      t.string :world_headline_1
      t.string :world_link_1
      t.string :world_headline_2
      t.string :world_link_2
      t.string :world_headline_3
      t.string :world_link_3
      t.integer :simply_south_photo_id
      t.string :simply_south_headline_1
      t.string :simply_south_link_1
      t.string :simply_south_headline_2
      t.string :simply_south_link_2
      t.string :simply_south_headline_3
      t.string :simply_south_link_3
      t.integer :editorial_caricature_1_id
      t.string :editorial_heading_1
      t.string :editorial_blurb_1
      t.integer :editorial_caricature_2_id
      t.string :editorial_heading_2
      t.string :editorial_blurb_2
      t.integer :whats_on_my_mind_photo_1_id
      t.string :whats_on_my_mind_headline_1
      t.string :whats_on_my_mind_link_1
      t.integer :whats_on_my_mind_photo_2_id
      t.string :whats_on_my_mind_headline_2
      t.string :whats_on_my_mind_link_2
      t.integer :odd_one_photo_id
      t.string :odd_one_headline
      t.string :odd_one_blurb
      t.integer :blog_we_like_cartooon_1_id
      t.string :blog_we_like_headline1
      t.string :blog_we_like_link1
      t.integer :blog_we_like_cartooon_2_id
      t.string :blog_we_like_headline2
      t.string :blog_we_like_link2
      t.integer :blog_we_like_cartooon_3_id
      t.string :blog_we_like_headline3
      t.string :blog_we_like_link3
      t.integer :blog_we_like_cartooon_4_id
      t.string :blog_we_like_headline4
      t.string :blog_we_like_link4
      t.integer :blog_we_like_cartooon_5_id
      t.string :blog_we_like_headline5
      t.string :blog_we_like_link5
      t.integer :position

      t.timestamps
    end

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-homepages"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/homepages/homepages"})
    end

    drop_table :refinery_homepages

  end

end
