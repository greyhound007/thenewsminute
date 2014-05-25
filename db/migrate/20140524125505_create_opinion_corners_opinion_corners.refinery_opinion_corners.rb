# This migration comes from refinery_opinion_corners (originally 1)
class CreateOpinionCornersOpinionCorners < ActiveRecord::Migration

  def up
    create_table :refinery_opinion_corners do |t|
      t.string :headline
      t.string :link
      t.integer :photo_id
      t.string :author
      t.string :headline2
      t.string :link2
      t.string :headline3
      t.string :link3
      t.integer :position

      t.timestamps
    end

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-opinion_corners"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/opinion_corners/opinion_corners"})
    end

    drop_table :refinery_opinion_corners

  end

end
