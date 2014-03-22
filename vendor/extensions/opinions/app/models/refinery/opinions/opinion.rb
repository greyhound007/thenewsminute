module Refinery
  module Opinions
    class Opinion < Refinery::Core::BaseModel
      self.table_name = 'refinery_opinions'

      attr_accessible :headline, :url, :image_id, :headline2, :url2, :headline3, :url3, :headline4, :url4, :position

      validates :headline, :presence => true, :uniqueness => true

      belongs_to :image, :class_name => '::Refinery::Image'
    end
  end
end
