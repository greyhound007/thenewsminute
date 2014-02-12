Refinery::Core::Engine.routes.draw do

  # Frontend routes
  namespace :base_page_redirects do
    resources :base_page_redirects, :path => '', :only => [:index, :show]
  end

  # Admin routes
  namespace :base_page_redirects, :path => '' do
    namespace :admin, :path => Refinery::Core.backend_route do
      resources :base_page_redirects, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end

end
