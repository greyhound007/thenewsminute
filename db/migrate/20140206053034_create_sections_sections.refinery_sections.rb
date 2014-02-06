# This migration comes from refinery_sections (originally 1)
class CreateSectionsSections < ActiveRecord::Migration

  def up
    create_table :refinery_sections do |t|
      t.string :Topic
      t.string :headline_1
      t.integer :image_1_id
      t.string :link_1
      t.string :news_1_headline_1
      t.string :news_1_link_1
      t.string :news_1_headline_2
      t.string :news_1_link_2
      t.string :news_1_headline_3
      t.string :news_1_link_3
      t.string :news_1_headline_4
      t.string :news_1_link_4
      t.string :news_1_headline_5
      t.string :news_1_link_5
      t.string :rank_1
      t.string :headline_2
      t.integer :image_2_id
      t.string :link_2
      t.string :news_2_headline_1
      t.string :news_2_link_1
      t.string :news_2_headline_2
      t.string :news_2_link_2
      t.string :news_2_headline_3
      t.string :news_2_link_3
      t.string :news_2_headline_4
      t.string :news_2_link_4
      t.string :news_2_headline_5
      t.string :news_2_link_5
      t.string :rank_2
      t.string :headline_3
      t.integer :image_3_id
      t.string :link_3
      t.string :news_3_headline_1
      t.string :news_3_link_1
      t.string :news_3_headline_2
      t.string :news_3_link_2
      t.string :news_3_headline_3
      t.string :news_3_link_3
      t.string :news_3_headline_4
      t.string :news_3_link_4
      t.string :news_3_headline_5
      t.string :news_3_link_5
      t.string :rank_3
      t.string :headline_4
      t.integer :image_4_id
      t.string :link_4
      t.string :news_4_headline_1
      t.string :news_4_link_1
      t.string :news_4_headline_2
      t.string :news_4_link_2
      t.string :news_4_headline_3
      t.string :news_4_link_3
      t.string :news_4_headline_4
      t.string :news_4_link_4
      t.string :news_4_headline_5
      t.string :news_4_link_5
      t.string :rank_4
      t.string :headline_5
      t.integer :image_5_id
      t.string :link_5
      t.string :rank_5
      t.string :headline_6
      t.integer :image_6_id
      t.string :link_6
      t.string :rank_6
      t.string :headline_7
      t.integer :image_7_id
      t.string :link_7
      t.string :rank_7
      t.string :headline_8
      t.integer :image_8_id
      t.string :link_8
      t.string :rank_8
      t.integer :position

      t.timestamps
    end

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-sections"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/sections/sections"})
    end

    drop_table :refinery_sections

  end

end
