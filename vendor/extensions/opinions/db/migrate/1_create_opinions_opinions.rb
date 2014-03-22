class CreateOpinionsOpinions < ActiveRecord::Migration

  def up
    create_table :refinery_opinions do |t|
      t.string :headline
      t.string :url
      t.integer :image_id
      t.string :headline2
      t.string :url2
      t.string :headline3
      t.string :url3
      t.string :headline4
      t.string :url4
      t.integer :position

      t.timestamps
    end

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-opinions"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/opinions/opinions"})
    end

    drop_table :refinery_opinions

  end

end
