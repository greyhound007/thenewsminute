module Refinery
  module LandingPages
    class LandingPage < Refinery::Core::BaseModel
      self.table_name = 'refinery_landing_pages'

      attr_accessible :Homepage_Headline, :position

      validates :Homepage_Headline, :presence => true, :uniqueness => true
    end
  end
end
