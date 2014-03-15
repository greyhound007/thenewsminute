module Refinery
  module Specials
    class Engine < Rails::Engine
      extend Refinery::Engine
      isolate_namespace Refinery::Specials

      engine_name :refinery_specials

      initializer "register refinerycms_specials plugin" do
        Refinery::Plugin.register do |plugin|
          plugin.name = "specials"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.specials_admin_specials_path }
          plugin.pathname = root
          plugin.activity = {
            :class_name => :'refinery/specials/special',
            :title => 'headline'
          }
          
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::Specials)
      end
    end
  end
end
