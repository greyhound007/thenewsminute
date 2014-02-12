require 'refinerycms-core'

module Refinery
  autoload :BasePageRedirectsGenerator, 'generators/refinery/base_page_redirects_generator'

  module BasePageRedirects
    require 'refinery/base_page_redirects/engine'

    class << self
      attr_writer :root

      def root
        @root ||= Pathname.new(File.expand_path('../../../', __FILE__))
      end

      def factory_paths
        @factory_paths ||= [ root.join('spec', 'factories').to_s ]
      end
    end
  end
end
