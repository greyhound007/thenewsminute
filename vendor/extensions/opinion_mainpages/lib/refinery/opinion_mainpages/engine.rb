module Refinery
  module OpinionMainpages
    class Engine < Rails::Engine
      extend Refinery::Engine
      isolate_namespace Refinery::OpinionMainpages

      engine_name :refinery_opinion_mainpages

      before_inclusion do
        Refinery::Plugin.register do |plugin|
          plugin.name = "opinion_mainpages"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.opinion_mainpages_admin_opinion_mainpages_path }
          plugin.pathname = root
          plugin.activity = {
            :class_name => :'refinery/opinion_mainpages/opinion_mainpage',
            :title => 'headline'
          }
          
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::OpinionMainpages)
      end
    end
  end
end
