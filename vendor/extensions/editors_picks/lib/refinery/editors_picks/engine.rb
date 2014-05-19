module Refinery
  module EditorsPicks
    class Engine < Rails::Engine
      extend Refinery::Engine
      isolate_namespace Refinery::EditorsPicks

      engine_name :refinery_editors_picks

      before_inclusion do
        Refinery::Plugin.register do |plugin|
          plugin.name = "editors_picks"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.editors_picks_admin_editors_picks_path }
          plugin.pathname = root
          plugin.activity = {
            :class_name => :'refinery/editors_picks/editors_pick',
            :title => 'headline'
          }
          
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::EditorsPicks)
      end
    end
  end
end
