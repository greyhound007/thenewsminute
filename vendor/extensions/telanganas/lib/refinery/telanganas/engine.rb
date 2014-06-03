module Refinery
  module Telanganas
    class Engine < Rails::Engine
      extend Refinery::Engine
      isolate_namespace Refinery::Telanganas

      engine_name :refinery_telanganas

      before_inclusion do
        Refinery::Plugin.register do |plugin|
          plugin.name = "telanganas"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.telanganas_admin_telanganas_path }
          plugin.pathname = root
          plugin.activity = {
            :class_name => :'refinery/telanganas/telangana',
            :title => 'headline'
          }
          
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::Telanganas)
      end
    end
  end
end
