module Refinery
  module Blogs
    module Admin
      class BlogsController < ::Refinery::AdminController

        crudify :'refinery/blogs/blog',
                :title_attribute => 'headline',
                :xhr_paging => true

      end
    end
  end
end
