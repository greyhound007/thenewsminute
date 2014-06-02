module Refinery
  module Lives
    class Engine < Rails::Engine
      extend Refinery::Engine
      isolate_namespace Refinery::Lives

      engine_name :refinery_lives

      before_inclusion do
        Refinery::Plugin.register do |plugin|
          plugin.name = "lives"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.lives_admin_lives_path }
          plugin.pathname = root
          plugin.activity = {
            :class_name => :'refinery/lives/life',
            :title => 'Main_headline'
          }
          
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::Lives)
      end
    end
  end
end
