module Refinery
  module NewsSections
    class Engine < Rails::Engine
      extend Refinery::Engine
      isolate_namespace Refinery::NewsSections

      engine_name :refinery_news_sections

      before_inclusion do
        Refinery::Plugin.register do |plugin|
          plugin.name = "news_sections"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.news_sections_admin_news_sections_path }
          plugin.pathname = root
          plugin.activity = {
            :class_name => :'refinery/news_sections/news_section',
            :title => 'Main_headline'
          }
          
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::NewsSections)
      end
    end
  end
end
