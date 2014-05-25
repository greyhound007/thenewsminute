module Refinery
  module OpinionCorners
    class Engine < Rails::Engine
      extend Refinery::Engine
      isolate_namespace Refinery::OpinionCorners

      engine_name :refinery_opinion_corners

      before_inclusion do
        Refinery::Plugin.register do |plugin|
          plugin.name = "opinion_corners"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.opinion_corners_admin_opinion_corners_path }
          plugin.pathname = root
          plugin.activity = {
            :class_name => :'refinery/opinion_corners/opinion_corner',
            :title => 'headline'
          }
          
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::OpinionCorners)
      end
    end
  end
end
