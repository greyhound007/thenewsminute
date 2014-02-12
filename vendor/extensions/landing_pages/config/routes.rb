Refinery::Core::Engine.routes.draw do

  # Frontend routes
  namespace :landing_pages do
    resources :landing_pages, :path => '', :only => [:index, :show]
  end

  # Admin routes
  namespace :landing_pages, :path => '' do
    namespace :admin, :path => Refinery::Core.backend_route do
      resources :landing_pages, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end

end
