module Refinery
  module Mainpages
    class Engine < Rails::Engine
      extend Refinery::Engine
      isolate_namespace Refinery::Mainpages

      engine_name :refinery_mainpages

      initializer "register refinerycms_mainpages plugin" do
        Refinery::Plugin.register do |plugin|
          plugin.name = "mainpages"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.mainpages_admin_mainpages_path }
          plugin.pathname = root
          plugin.activity = {
            :class_name => :'refinery/mainpages/mainpage',
            :title => 'main_headline'
          }
          
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::Mainpages)
      end
    end
  end
end
