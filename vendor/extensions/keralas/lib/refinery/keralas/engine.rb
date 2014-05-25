module Refinery
  module Keralas
    class Engine < Rails::Engine
      extend Refinery::Engine
      isolate_namespace Refinery::Keralas

      engine_name :refinery_keralas

      before_inclusion do
        Refinery::Plugin.register do |plugin|
          plugin.name = "keralas"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.keralas_admin_keralas_path }
          plugin.pathname = root
          plugin.activity = {
            :class_name => :'refinery/keralas/kerala',
            :title => 'headline'
          }
          
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::Keralas)
      end
    end
  end
end
