module Refinery
  module Socials
    class Engine < Rails::Engine
      extend Refinery::Engine
      isolate_namespace Refinery::Socials

      engine_name :refinery_socials

      before_inclusion do
        Refinery::Plugin.register do |plugin|
          plugin.name = "socials"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.socials_admin_socials_path }
          plugin.pathname = root
          plugin.activity = {
            :class_name => :'refinery/socials/social',
            :title => 'Main_headline'
          }
          
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::Socials)
      end
    end
  end
end
