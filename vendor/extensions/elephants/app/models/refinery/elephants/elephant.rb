module Refinery
  module Elephants
    class Elephant < Refinery::Core::BaseModel
      self.table_name = 'refinery_elephants'

      attr_accessible :headline, :link, :photo_id, :author, :position

      validates :headline, :presence => true, :uniqueness => true

      belongs_to :photo, :class_name => '::Refinery::Image'
    end
  end
end
