class CreateBasePageRedirectsBasePageRedirects < ActiveRecord::Migration

  def up
    create_table :refinery_base_page_redirects do |t|
      t.string :Homepage_Headline
      t.string :Mainpage_url
      t.integer :position

      t.timestamps
    end

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-base_page_redirects"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/base_page_redirects/base_page_redirects"})
    end

    drop_table :refinery_base_page_redirects

  end

end
