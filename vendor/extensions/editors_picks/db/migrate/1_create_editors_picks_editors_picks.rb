class CreateEditorsPicksEditorsPicks < ActiveRecord::Migration

  def up
    create_table :refinery_editors_picks do |t|
      t.string :headline
      t.string :link
      t.integer :position

      t.timestamps
    end

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-editors_picks"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/editors_picks/editors_picks"})
    end

    drop_table :refinery_editors_picks

  end

end
