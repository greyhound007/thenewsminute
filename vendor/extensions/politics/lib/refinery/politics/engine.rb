module Refinery
  module Politics
    class Engine < Rails::Engine
      extend Refinery::Engine
      isolate_namespace Refinery::Politics

      engine_name :refinery_politics

      initializer "register refinerycms_politics plugin" do
        Refinery::Plugin.register do |plugin|
          plugin.name = "politics"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.politics_admin_politics_path }
          plugin.pathname = root
          plugin.activity = {
            :class_name => :'refinery/politics/politic',
            :title => 'headline_1'
          }
          
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::Politics)
      end
    end
  end
end
