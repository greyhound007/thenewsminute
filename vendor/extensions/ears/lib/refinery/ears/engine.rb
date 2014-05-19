module Refinery
  module Ears
    class Engine < Rails::Engine
      extend Refinery::Engine
      isolate_namespace Refinery::Ears

      engine_name :refinery_ears

      before_inclusion do
        Refinery::Plugin.register do |plugin|
          plugin.name = "ears"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.ears_admin_ears_path }
          plugin.pathname = root
          plugin.activity = {
            :class_name => :'refinery/ears/ear',
            :title => 'headline'
          }
          
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::Ears)
      end
    end
  end
end
