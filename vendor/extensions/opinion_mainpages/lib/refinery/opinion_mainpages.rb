require 'refinerycms-core'

module Refinery
  autoload :OpinionMainpagesGenerator, 'generators/refinery/opinion_mainpages_generator'

  module OpinionMainpages
    require 'refinery/opinion_mainpages/engine'

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
