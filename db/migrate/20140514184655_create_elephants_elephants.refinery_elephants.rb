# This migration comes from refinery_elephants (originally 1)
class CreateElephantsElephants < ActiveRecord::Migration

  def up
    create_table :refinery_elephants do |t|
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
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-elephants"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/elephants/elephants"})
    end

    drop_table :refinery_elephants

  end

end
