module Refinery
  module Elephants
    class Engine < Rails::Engine
      extend Refinery::Engine
      isolate_namespace Refinery::Elephants

      engine_name :refinery_elephants

      before_inclusion do
        Refinery::Plugin.register do |plugin|
          plugin.name = "elephants"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.elephants_admin_elephants_path }
          plugin.pathname = root
          plugin.activity = {
            :class_name => :'refinery/elephants/elephant',
            :title => 'headline'
          }
          
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::Elephants)
      end
    end
  end
end
