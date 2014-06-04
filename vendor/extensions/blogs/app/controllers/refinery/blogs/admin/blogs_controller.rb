module Refinery
  module Blogs
    module Admin
      class BlogsController < ::Refinery::AdminController

        crudify :'refinery/blogs/blog',
                :title_attribute => 'headline',
                :per_page => '1000',
                :xhr_paging => true

      end
    end
  end
end
