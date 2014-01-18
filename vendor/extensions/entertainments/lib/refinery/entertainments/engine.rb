module Refinery
  module Entertainments
    class Engine < Rails::Engine
      extend Refinery::Engine
      isolate_namespace Refinery::Entertainments

      engine_name :refinery_entertainments

      initializer "register refinerycms_entertainments plugin" do
        Refinery::Plugin.register do |plugin|
          plugin.name = "entertainments"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.entertainments_admin_entertainments_path }
          plugin.pathname = root
          plugin.activity = {
            :class_name => :'refinery/entertainments/entertainment',
            :title => 'headline_1'
          }
          
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::Entertainments)
      end
    end
  end
end
