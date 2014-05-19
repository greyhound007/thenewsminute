module Refinery
  module Latests
    class Latest < Refinery::Core::BaseModel
      self.table_name = 'refinery_latests'

      attr_accessible :headline, :link, :photo_id, :position

      validates :headline, :presence => true, :uniqueness => true

      belongs_to :photo, :class_name => '::Refinery::Image'
    end
  end
end
