module Refinery
  module Latests
    class Engine < Rails::Engine
      extend Refinery::Engine
      isolate_namespace Refinery::Latests

      engine_name :refinery_latests

      before_inclusion do
        Refinery::Plugin.register do |plugin|
          plugin.name = "latests"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.latests_admin_latests_path }
          plugin.pathname = root
          plugin.activity = {
            :class_name => :'refinery/latests/latest',
            :title => 'headline'
          }
          
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::Latests)
      end
    end
  end
end
