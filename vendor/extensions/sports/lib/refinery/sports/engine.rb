module Refinery
  module Sports
    class Engine < Rails::Engine
      extend Refinery::Engine
      isolate_namespace Refinery::Sports

      engine_name :refinery_sports

      before_inclusion do
        Refinery::Plugin.register do |plugin|
          plugin.name = "sports"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.sports_admin_sports_path }
          plugin.pathname = root
          plugin.activity = {
            :class_name => :'refinery/sports/sport',
            :title => 'Main_headline'
          }
          
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::Sports)
      end
    end
  end
end
