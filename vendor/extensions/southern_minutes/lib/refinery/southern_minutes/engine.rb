module Refinery
  module SouthernMinutes
    class Engine < Rails::Engine
      extend Refinery::Engine
      isolate_namespace Refinery::SouthernMinutes

      engine_name :refinery_southern_minutes

      before_inclusion do
        Refinery::Plugin.register do |plugin|
          plugin.name = "southern_minutes"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.southern_minutes_admin_southern_minutes_path }
          plugin.pathname = root
          plugin.activity = {
            :class_name => :'refinery/southern_minutes/southern_minute',
            :title => 'headline'
          }
          
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::SouthernMinutes)
      end
    end
  end
end
