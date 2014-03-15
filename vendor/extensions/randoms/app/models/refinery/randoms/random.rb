module Refinery
  module Randoms
    class Random < Refinery::Core::BaseModel
      self.table_name = 'refinery_randoms'

      attr_accessible :headline, :url, :tags, :source, :image_id, :position

      validates :headline, :presence => true, :uniqueness => true

      belongs_to :image, :class_name => '::Refinery::Image'
    end
  end
end
