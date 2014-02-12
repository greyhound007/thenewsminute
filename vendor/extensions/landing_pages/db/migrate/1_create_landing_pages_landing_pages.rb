class CreateLandingPagesLandingPages < ActiveRecord::Migration

  def up
    create_table :refinery_landing_pages do |t|
      t.string :Homepage_Headline
      t.integer :position

      t.timestamps
    end

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-landing_pages"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/landing_pages/landing_pages"})
    end

    drop_table :refinery_landing_pages

  end

end
