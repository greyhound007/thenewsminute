# This migration comes from refinery_topstories (originally 1)
class CreateTopstoriesTopstories < ActiveRecord::Migration

  def up
    create_table :refinery_topstories do |t|
      t.string :main_headline
      t.integer :main_photo_id
      t.string :main_blurb
      t.string :main_link
      t.text :main_story_link_headline_1
      t.text :main_story_link_1
      t.text :main_story_link_source_1
      t.text :main_story_link_headline_2
      t.text :main_story_link_2
      t.text :main_story_link_source_2
      t.text :main_story_link_headline_3
      t.text :main_story_link_3
      t.text :main_story_link_source_3
      t.text :main_story_link_headline_4
      t.text :main_story_link_4
      t.text :main_story_link_source_4
      t.string :main_headline_2
      t.integer :main_photo_2_id
      t.string :main_blurb_2
      t.string :main_link_2
      t.integer :latest_photo_1_id
      t.string :latest_headline_1
      t.string :latest_link_1
      t.integer :latest_photo_2_id
      t.string :latest_headline_2
      t.string :latest_link_2
      t.integer :latest_photo_3_id
      t.string :latest_headline_3
      t.string :latest_link_3
      t.integer :latest_photo_4_id
      t.string :latest_headline_4
      t.string :latest_link_4
      t.integer :politics_photo_id
      t.string :politics_headline
      t.string :politics_link
      t.string :politics_headline_1
      t.string :politics_link_1
      t.string :politics_headline_2
      t.string :politics_link_2
      t.string :politics_headline_3
      t.string :politics_link_3
      t.integer :news_photo_id
      t.string :news_headline
      t.string :news_link
      t.string :news_headline_1
      t.string :news_link_1
      t.string :news_headline_2
      t.string :news_link_2
      t.string :news_headline_3
      t.string :news_link_3
      t.integer :sports_photo_id
      t.text :sports_headline
      t.string :sports_link
      t.string :sports_headline_1
      t.string :sports_link_1
      t.string :sports_headline_2
      t.string :sports_link_2
      t.string :sports_headline_3
      t.string :sports_link_3
      t.integer :entertainment_photo_id
      t.text :entertainment_headline
      t.text :entertainment_link
      t.string :entertainment_headline_1
      t.string :entertainment_link_1
      t.string :entertainment_headline_2
      t.string :entertainment_link_2
      t.string :entertainment_headline_3
      t.string :entertainment_link_3
      t.integer :technology_photo_id
      t.string :technology_headline
      t.string :technology_link
      t.string :technology_headline_1
      t.string :technology_link_1
      t.string :technology_headline_2
      t.string :technology_link_2
      t.string :technology_headline_3
      t.string :technology_link_3
      t.integer :money_photo_id
      t.string :money_headline
      t.string :money_link
      t.string :money_headline_1
      t.string :money_link_1
      t.string :money_headline_2
      t.string :money_link_2
      t.string :money_headline_3
      t.string :money_link_3
      t.integer :world_photo_left_id
      t.string :world_headline_left
      t.string :world_link_left
      t.string :world_headline_1_left
      t.string :world_link_1_left
      t.string :world_headline_2_left
      t.string :world_link_2_left
      t.string :world_headline_3_left
      t.string :world_link_3_left
      t.integer :world_photo_right_id
      t.string :world_headline_right
      t.string :world_link_right
      t.string :world_headline_1_right
      t.string :world_link_1_right
      t.string :world_headline_2_right
      t.string :world_link_2_right
      t.string :world_headline_3_right
      t.string :world_link_3_right
      t.integer :southern_minute_photo_1_id
      t.string :southern_minute_headline_1
      t.string :southern_minute_link_1
      t.integer :southern_minute_photo_2_id
      t.string :southern_minute_headline_2
      t.string :southern_minute_link_2
      t.integer :southern_minute_photo_3_id
      t.string :southern_minute_headline_3
      t.string :southern_minute_link_3
      t.integer :southern_minute_photo_4_id
      t.string :southern_minute_headline_4
      t.string :southern_minute_link_4
      t.integer :columnist_caricature_1_id
      t.string :columnist_headline_1
      t.string :columnist_link_1
      t.string :columnist_name_1
      t.integer :columnist_caricature_2_id
      t.string :columnist_headline_2
      t.string :columnist_link_2
      t.string :columnist_name_2
      t.integer :columnist_caricature_3_id
      t.string :columnist_headline_3
      t.string :columnist_link_3
      t.string :columnist_name_3
      t.integer :columnist_caricature_4_id
      t.string :columnist_headline_4
      t.string :columnist_link_4
      t.string :columnist_name_4
      t.integer :columnist_caricature_5_id
      t.string :columnist_headline_5
      t.string :columnist_link_5
      t.string :columnist_name_5
      t.integer :editorial_caricature_1_id
      t.string :editorial_heading_1
      t.string :editorial_author_1
      t.string :editorial_link_1
      t.integer :editorial_caricature_2_id
      t.string :editorial_heading_2
      t.string :editorial_author_2
      t.string :editorial_link_2
      t.integer :voices_1_id
      t.string :voices_headline_1
      t.string :voices_link_1
      t.integer :voices_photo_2_id
      t.string :voices_headline_2
      t.string :voices_link_2
      t.integer :random_photo_1_id
      t.string :random_headline_1
      t.string :random_link_1
      t.integer :random_photo_2_id
      t.string :random_headline_2
      t.string :random_link_2
      t.integer :random_photo_3_id
      t.string :random_headline_3
      t.string :random_link_3
      t.integer :random_photo_4_id
      t.string :random_headline_4
      t.string :random_link_4
      t.integer :position

      t.timestamps
    end

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-topstories"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/topstories/topstories"})
    end

    drop_table :refinery_topstories

  end

end
