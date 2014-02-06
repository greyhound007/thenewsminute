module Refinery
  module Subsections
    class Engine < Rails::Engine
      extend Refinery::Engine
      isolate_namespace Refinery::Subsections

      engine_name :refinery_subsections

      initializer "register refinerycms_subsections plugin" do
        Refinery::Plugin.register do |plugin|
          plugin.name = "subsections"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.subsections_admin_subsections_path }
          plugin.pathname = root
          plugin.activity = {
            :class_name => :'refinery/subsections/subsection',
            :title => 'Topic'
          }
          
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::Subsections)
      end
    end
  end
end
