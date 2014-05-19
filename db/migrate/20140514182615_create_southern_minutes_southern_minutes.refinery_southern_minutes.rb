# This migration comes from refinery_southern_minutes (originally 1)
class CreateSouthernMinutesSouthernMinutes < ActiveRecord::Migration

  def up
    create_table :refinery_southern_minutes do |t|
      t.string :headline
      t.string :link
      t.integer :photo_id
      t.integer :position

      t.timestamps
    end

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-southern_minutes"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/southern_minutes/southern_minutes"})
    end

    drop_table :refinery_southern_minutes

  end

end
