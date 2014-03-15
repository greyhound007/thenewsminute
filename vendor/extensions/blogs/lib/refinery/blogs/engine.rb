module Refinery
  module Blogs
    class Engine < Rails::Engine
      extend Refinery::Engine
      isolate_namespace Refinery::Blogs

      engine_name :refinery_blogs

      initializer "register refinerycms_blogs plugin" do
        Refinery::Plugin.register do |plugin|
          plugin.name = "blogs"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.blogs_admin_blogs_path }
          plugin.pathname = root
          plugin.activity = {
            :class_name => :'refinery/blogs/blog',
            :title => 'headline'
          }
          
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::Blogs)
      end
    end
  end
end
