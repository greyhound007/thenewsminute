# This migration comes from refinery_headlines (originally 1)
class CreateHeadlinesHeadlines < ActiveRecord::Migration

  def up
    create_table :refinery_headlines do |t|
      t.string :main_headline
      t.integer :main_photo_id
      t.string :main_blurb
      t.string :main_link
      t.string :main_story_link_headline_1
      t.string :main_story_link_1
      t.string :main_story_link_source_1
      t.string :main_story_link_headline_2
      t.string :main_story_link_2
      t.string :main_story_link_source_2
      t.string :main_story_link_headline_3
      t.string :main_story_link_3
      t.string :main_story_link_source_3
      t.string :main_story_link_headline_4
      t.string :main_story_link_4
      t.string :main_story_link_source_4
      t.integer :position

      t.timestamps
    end

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-headlines"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/headlines/headlines"})
    end

    drop_table :refinery_headlines

  end

end
