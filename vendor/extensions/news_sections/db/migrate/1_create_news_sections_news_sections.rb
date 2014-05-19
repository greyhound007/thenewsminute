class CreateNewsSectionsNewsSections < ActiveRecord::Migration

  def up
    create_table :refinery_news_sections do |t|
      t.string :Main_headline
      t.integer :photo_id
      t.string :youtube
      t.string :image_blurb
      t.string :blurb
      t.text :summary
      t.string :tags
      t.string :headline_1
      t.string :link_1
      t.string :source_1
      t.string :headline_2
      t.string :link_2
      t.string :source_2
      t.string :headline_3
      t.string :link_3
      t.string :source_3
      t.string :headline_4
      t.string :link_4
      t.string :source_4
      t.string :headline_5
      t.string :link_5
      t.string :source_5
      t.string :headline_6
      t.string :link_6
      t.string :source_6
      t.string :headline_7
      t.string :link_7
      t.string :source_7
      t.string :headline_8
      t.string :link_8
      t.string :source_8
      t.integer :position

      t.timestamps
    end

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-news_sections"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/news_sections/news_sections"})
    end

    drop_table :refinery_news_sections

  end

end
