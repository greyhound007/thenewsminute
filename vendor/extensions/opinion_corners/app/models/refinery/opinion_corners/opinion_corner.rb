module Refinery
  module OpinionCorners
    class OpinionCorner < Refinery::Core::BaseModel
      self.table_name = 'refinery_opinion_corners'

      attr_accessible :headline, :link, :photo_id, :author, :headline2, :link2, :headline3, :link3, :position

      validates :headline, :presence => true, :uniqueness => true

      belongs_to :photo, :class_name => '::Refinery::Image'
    end
  end
end
