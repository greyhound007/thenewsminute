module Refinery
  module Homepages
    class Engine < Rails::Engine
      extend Refinery::Engine
      isolate_namespace Refinery::Homepages

      engine_name :refinery_homepages

      initializer "register refinerycms_homepages plugin" do
        Refinery::Plugin.register do |plugin|
          plugin.name = "homepages"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.homepages_admin_homepages_path }
          plugin.pathname = root
          plugin.activity = {
            :class_name => :'refinery/homepages/homepage',
            :title => 'main_story_headline_1'
          }
          
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::Homepages)
      end
    end
  end
end
