module Refinery
  module Redirects
    class Engine < Rails::Engine
      extend Refinery::Engine
      isolate_namespace Refinery::Redirects

      engine_name :refinery_redirects

      initializer "register refinerycms_redirects plugin" do
        Refinery::Plugin.register do |plugin|
          plugin.name = "redirects"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.redirects_admin_redirects_path }
          plugin.pathname = root
          plugin.activity = {
            :class_name => :'refinery/redirects/redirect',
            :title => 'Homepage_Headline'
          }
          
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::Redirects)
      end
    end
  end
end
