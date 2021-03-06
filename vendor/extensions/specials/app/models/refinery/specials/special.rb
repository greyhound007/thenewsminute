module Refinery
  module Specials
    class Special < Refinery::Core::BaseModel
      self.table_name = 'refinery_specials'

      attr_accessible :headline, :url, :tags, :source, :image_id, :position

      validates :headline, :presence => true, :uniqueness => true

      belongs_to :image, :class_name => '::Refinery::Image'
    end
  end
end
