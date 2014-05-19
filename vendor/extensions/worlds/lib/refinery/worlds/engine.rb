module Refinery
  module Worlds
    class Engine < Rails::Engine
      extend Refinery::Engine
      isolate_namespace Refinery::Worlds

      engine_name :refinery_worlds

      before_inclusion do
        Refinery::Plugin.register do |plugin|
          plugin.name = "worlds"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.worlds_admin_worlds_path }
          plugin.pathname = root
          plugin.activity = {
            :class_name => :'refinery/worlds/world',
            :title => 'Main_headline'
          }
          
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::Worlds)
      end
    end
  end
end
