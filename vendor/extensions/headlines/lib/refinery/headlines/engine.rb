module Refinery
  module Headlines
    class Engine < Rails::Engine
      extend Refinery::Engine
      isolate_namespace Refinery::Headlines

      engine_name :refinery_headlines

      initializer "register refinerycms_headlines plugin" do
        Refinery::Plugin.register do |plugin|
          plugin.name = "headlines"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.headlines_admin_headlines_path }
          plugin.pathname = root
          plugin.activity = {
            :class_name => :'refinery/headlines/headline',
            :title => 'main_headline'
          }
          
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::Headlines)
      end
    end
  end
end
