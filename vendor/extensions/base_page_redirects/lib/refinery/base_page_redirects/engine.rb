module Refinery
  module BasePageRedirects
    class Engine < Rails::Engine
      extend Refinery::Engine
      isolate_namespace Refinery::BasePageRedirects

      engine_name :refinery_base_page_redirects

      initializer "register refinerycms_base_page_redirects plugin" do
        Refinery::Plugin.register do |plugin|
          plugin.name = "base_page_redirects"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.base_page_redirects_admin_base_page_redirects_path }
          plugin.pathname = root
          plugin.activity = {
            :class_name => :'refinery/base_page_redirects/base_page_redirect',
            :title => 'Homepage_Headline'
          }
          
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::BasePageRedirects)
      end
    end
  end
end
