module Refinery
  module Headline2s
    class Engine < Rails::Engine
      extend Refinery::Engine
      isolate_namespace Refinery::Headline2s

      engine_name :refinery_headline_2s

      before_inclusion do
        Refinery::Plugin.register do |plugin|
          plugin.name = "headline_2s"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.headline2s_admin_headline_2s_path }
          plugin.pathname = root
          plugin.activity = {
            :class_name => :'refinery/headline2s/headline_2',
            :title => 'headline'
          }
          plugin.menu_match = %r{refinery/headline2s/headline_2s(/.*)?$}
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::Headline2s)
      end
    end
  end
end
