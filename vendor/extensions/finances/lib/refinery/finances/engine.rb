module Refinery
  module Finances
    class Engine < Rails::Engine
      extend Refinery::Engine
      isolate_namespace Refinery::Finances

      engine_name :refinery_finances

      before_inclusion do
        Refinery::Plugin.register do |plugin|
          plugin.name = "finances"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.finances_admin_finances_path }
          plugin.pathname = root
          plugin.activity = {
            :class_name => :'refinery/finances/finance',
            :title => 'Main_headline'
          }
          
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::Finances)
      end
    end
  end
end
