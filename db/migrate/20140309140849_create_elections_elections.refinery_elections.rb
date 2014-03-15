# This migration comes from refinery_elections (originally 1)
class CreateElectionsElections < ActiveRecord::Migration

  def up
    create_table :refinery_elections do |t|
      t.string :headline
      t.string :url
      t.string :region
      t.string :rank
      t.string :date
      t.integer :position

      t.timestamps
    end

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-elections"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/elections/elections"})
    end

    drop_table :refinery_elections

  end

end
