module Refinery
  module OpinionMainpages
    class OpinionMainpage < Refinery::Core::BaseModel
      self.table_name = 'refinery_opinion_mainpages'

      attr_accessible :headline, :url, :image_id, :author, :position

      validates :headline, :presence => true, :uniqueness => true

      belongs_to :image, :class_name => '::Refinery::Image'
    end
  end
end
