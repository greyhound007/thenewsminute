module Refinery
  module Andhras
    class Engine < Rails::Engine
      extend Refinery::Engine
      isolate_namespace Refinery::Andhras

      engine_name :refinery_andhras

      before_inclusion do
        Refinery::Plugin.register do |plugin|
          plugin.name = "andhras"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.andhras_admin_andhras_path }
          plugin.pathname = root
          plugin.activity = {
            :class_name => :'refinery/andhras/andhra',
            :title => 'headline'
          }
          
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::Andhras)
      end
    end
  end
end
