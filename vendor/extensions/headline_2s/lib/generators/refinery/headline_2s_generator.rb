module Refinery
  class Headline2sGenerator < Rails::Generators::Base

    def rake_db
      rake "refinery_headline_2s:install:migrations"
    end

    def append_load_seed_data
      create_file 'db/seeds.rb' unless File.exists?(File.join(destination_root, 'db', 'seeds.rb'))
      append_file 'db/seeds.rb', :verbose => true do
        <<-EOH

# Added by Refinery CMS Headline2s extension
Refinery::Headline2s::Engine.load_seed
        EOH
      end
    end
  end
end
