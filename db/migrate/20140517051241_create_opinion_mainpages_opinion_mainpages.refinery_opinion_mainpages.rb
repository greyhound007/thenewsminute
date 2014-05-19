# This migration comes from refinery_opinion_mainpages (originally 1)
class CreateOpinionMainpagesOpinionMainpages < ActiveRecord::Migration

  def up
    create_table :refinery_opinion_mainpages do |t|
      t.string :headline
      t.string :url
      t.integer :image_id
      t.string :author
      t.integer :position

      t.timestamps
    end

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-opinion_mainpages"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/opinion_mainpages/opinion_mainpages"})
    end

    drop_table :refinery_opinion_mainpages

  end

end
