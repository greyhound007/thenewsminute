module Refinery
  module Opinions
    class Engine < Rails::Engine
      extend Refinery::Engine
      isolate_namespace Refinery::Opinions

      engine_name :refinery_opinions

      initializer "register refinerycms_opinions plugin" do
        Refinery::Plugin.register do |plugin|
          plugin.name = "opinions"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.opinions_admin_opinions_path }
          plugin.pathname = root
          plugin.activity = {
            :class_name => :'refinery/opinions/opinion',
            :title => 'headline'
          }
          
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::Opinions)
      end
    end
  end
end
