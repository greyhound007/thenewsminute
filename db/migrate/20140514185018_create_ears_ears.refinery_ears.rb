# This migration comes from refinery_ears (originally 1)
class CreateEarsEars < ActiveRecord::Migration

  def up
    create_table :refinery_ears do |t|
      t.string :headline
      t.string :link
      t.integer :photo_id
      t.string :author
      t.integer :position

      t.timestamps
    end

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-ears"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/ears/ears"})
    end

    drop_table :refinery_ears

  end

end
