module Refinery
  module BasePageRedirects
    class BasePageRedirect < Refinery::Core::BaseModel
      self.table_name = 'refinery_base_page_redirects'

      attr_accessible :Homepage_Headline, :Mainpage_url, :position

      validates :Homepage_Headline, :presence => true, :uniqueness => true
    end
  end
end
