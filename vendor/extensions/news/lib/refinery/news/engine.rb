module Refinery
  module News
    class Engine < Rails::Engine
      extend Refinery::Engine
      isolate_namespace Refinery::News

      engine_name :refinery_news

      before_inclusion do
        Refinery::Plugin.register do |plugin|
          plugin.name = "news"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.news_admin_news_path }
          plugin.pathname = root
          plugin.activity = {
            :class_name => :'refinery/news/new',
            :title => 'Main_headline'
          }
          
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::News)
      end
    end
  end
end
