module Refinery
  module Randoms
    class Engine < Rails::Engine
      extend Refinery::Engine
      isolate_namespace Refinery::Randoms

      engine_name :refinery_randoms

      initializer "register refinerycms_randoms plugin" do
        Refinery::Plugin.register do |plugin|
          plugin.name = "randoms"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.randoms_admin_randoms_path }
          plugin.pathname = root
          plugin.activity = {
            :class_name => :'refinery/randoms/random',
            :title => 'headline'
          }
          
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::Randoms)
      end
    end
  end
end
