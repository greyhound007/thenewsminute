module Refinery
  module Redirects
    class Redirect < Refinery::Core::BaseModel
      self.table_name = 'refinery_redirects'

      attr_accessible :Homepage_Headline, :Mainpage_url, :position

      validates :Homepage_Headline, :presence => true, :uniqueness => true
    end
  end
end
