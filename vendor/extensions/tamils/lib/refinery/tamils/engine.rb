module Refinery
  module Tamils
    class Engine < Rails::Engine
      extend Refinery::Engine
      isolate_namespace Refinery::Tamils

      engine_name :refinery_tamils

      before_inclusion do
        Refinery::Plugin.register do |plugin|
          plugin.name = "tamils"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.tamils_admin_tamils_path }
          plugin.pathname = root
          plugin.activity = {
            :class_name => :'refinery/tamils/tamil',
            :title => 'headline'
          }
          
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::Tamils)
      end
    end
  end
end
