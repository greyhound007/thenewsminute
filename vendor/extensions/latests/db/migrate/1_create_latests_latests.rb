class CreateLatestsLatests < ActiveRecord::Migration

  def up
    create_table :refinery_latests do |t|
      t.string :headline
      t.string :link
      t.integer :photo_id
      t.integer :position

      t.timestamps
    end

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-latests"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/latests/latests"})
    end

    drop_table :refinery_latests

  end

end
