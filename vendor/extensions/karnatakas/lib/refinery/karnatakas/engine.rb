module Refinery
  module Karnatakas
    class Engine < Rails::Engine
      extend Refinery::Engine
      isolate_namespace Refinery::Karnatakas

      engine_name :refinery_karnatakas

      before_inclusion do
        Refinery::Plugin.register do |plugin|
          plugin.name = "karnatakas"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.karnatakas_admin_karnatakas_path }
          plugin.pathname = root
          plugin.activity = {
            :class_name => :'refinery/karnatakas/karnataka',
            :title => 'headline'
          }
          
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::Karnatakas)
      end
    end
  end
end
