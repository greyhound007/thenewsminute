class CreateSpecialsSpecials < ActiveRecord::Migration

  def up
    create_table :refinery_specials do |t|
      t.string :headline
      t.string :url
      t.string :tags
      t.string :source
      t.integer :image_id
      t.integer :position

      t.timestamps
    end

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-specials"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/specials/specials"})
    end

    drop_table :refinery_specials

  end

end
