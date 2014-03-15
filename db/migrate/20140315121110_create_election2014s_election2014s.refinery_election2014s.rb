# This migration comes from refinery_election2014s (originally 1)
class CreateElection2014sElection2014s < ActiveRecord::Migration

  def up
    create_table :refinery_election2014s_election_2014s do |t|
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
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-election2014s"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/election2014s/election_2014s"})
    end

    drop_table :refinery_election2014s_election_2014s

  end

end
