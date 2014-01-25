module Refinery
  module NewsStories
    class Engine < Rails::Engine
      extend Refinery::Engine
      isolate_namespace Refinery::NewsStories

      engine_name :refinery_news_stories

      initializer "register refinerycms_news_stories plugin" do
        Refinery::Plugin.register do |plugin|
          plugin.name = "news_stories"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.news_stories_admin_news_stories_path }
          plugin.pathname = root
          plugin.activity = {
            :class_name => :'refinery/news_stories/news_story',
            :title => 'headline_1'
          }
          
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::NewsStories)
      end
    end
  end
end
