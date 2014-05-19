module Refinery
  module EditorsPicks
    class EditorsPick < Refinery::Core::BaseModel
      self.table_name = 'refinery_editors_picks'

      attr_accessible :headline, :link, :position

      validates :headline, :presence => true, :uniqueness => true
    end
  end
end
