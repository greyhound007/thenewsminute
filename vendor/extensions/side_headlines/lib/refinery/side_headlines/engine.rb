module Refinery
  module SideHeadlines
    class Engine < Rails::Engine
      extend Refinery::Engine
      isolate_namespace Refinery::SideHeadlines

      engine_name :refinery_side_headlines

      before_inclusion do
        Refinery::Plugin.register do |plugin|
          plugin.name = "side_headlines"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.side_headlines_admin_side_headlines_path }
          plugin.pathname = root
          plugin.activity = {
            :class_name => :'refinery/side_headlines/side_headline',
            :title => 'headline'
          }
          
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::SideHeadlines)
      end
    end
  end
end
