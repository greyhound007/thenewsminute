class CreateWorldsWorlds < ActiveRecord::Migration

  def up
    create_table :refinery_worlds do |t|
      t.string :headline_1
      t.integer :photo_1_id
      t.text :summary_1
      t.string :news_1_source_1
      t.string :news_1_link_1
      t.string :news_1_source_2
      t.string :news_1_link_2
      t.string :news_1_source_3
      t.string :news_1_link_3
      t.string :news_1_source_4
      t.string :news_1_link_4
      t.string :news_1_source_5
      t.string :news_1_link_5
      t.string :headline_2
      t.integer :photo_2_id
      t.text :summary_2
      t.string :news_2_source_1
      t.string :news_2_link_1
      t.string :news_2_source_2
      t.string :news_2_link_2
      t.string :news_2_source_3
      t.string :news_2_link_3
      t.string :news_2_source_4
      t.string :news_2_link_4
      t.string :news_2_source_5
      t.string :news_2_link_5
      t.string :headline_3
      t.integer :photo_3_id
      t.text :summary_3
      t.string :news_3_source_1
      t.string :news_3_link_1
      t.string :news_3_source_2
      t.string :news_3_link_2
      t.string :news_3_source_3
      t.string :news_3_link_3
      t.string :news_3_source_4
      t.string :news_3_link_4
      t.string :news_3_source_5
      t.string :news_3_link_5
      t.string :headline_4
      t.integer :photo_4_id
      t.text :summary_4
      t.string :news_4_source_1
      t.string :news_4_link_1
      t.string :news_4_source_2
      t.string :news_4_link_2
      t.string :news_4_source_3
      t.string :news_4_link_3
      t.string :news_4_source_4
      t.string :news_4_link_4
      t.string :news_4_source_5
      t.string :news_4_link_5
      t.string :headline_5
      t.integer :photo_5_id
      t.text :summary_5
      t.string :news_5_source_1
      t.string :news_5_link_1
      t.string :news_5_source_2
      t.string :news_5_link_2
      t.string :news_5_source_3
      t.string :news_5_link_3
      t.string :news_5_source_4
      t.string :news_5_link_4
      t.string :news_5_source_5
      t.string :news_5_link_5
      t.integer :position

      t.timestamps
    end

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-worlds"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/worlds/worlds"})
    end

    drop_table :refinery_worlds

  end

end
