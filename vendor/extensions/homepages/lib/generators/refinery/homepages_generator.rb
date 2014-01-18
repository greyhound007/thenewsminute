module Refinery
  class HomepagesGenerator < Rails::Generators::Base

    def rake_db
      rake "refinery_homepages:install:migrations"
    end

    def append_load_seed_data
      create_file 'db/seeds.rb' unless File.exists?(File.join(destination_root, 'db', 'seeds.rb'))
      append_file 'db/seeds.rb', :verbose => true do
        <<-EOH

# Added by Refinery CMS Homepages extension
Refinery::Homepages::Engine.load_seed
        EOH
      end
    end
  end
end
