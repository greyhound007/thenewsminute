module Refinery
  module Technologies
    class Engine < Rails::Engine
      extend Refinery::Engine
      isolate_namespace Refinery::Technologies

      engine_name :refinery_technologies

      before_inclusion do
        Refinery::Plugin.register do |plugin|
          plugin.name = "technologies"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.technologies_admin_technologies_path }
          plugin.pathname = root
          plugin.activity = {
            :class_name => :'refinery/technologies/technology',
            :title => 'Main_headline'
          }
          
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::Technologies)
      end
    end
  end
end
