Refinery::Core::Engine.routes.draw do

  # Frontend routes
  namespace :redirects do
    resources :redirects, :path => '', :only => [:index, :show]
  end

  # Admin routes
  namespace :redirects, :path => '' do
    namespace :admin, :path => Refinery::Core.backend_route do
      resources :redirects, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end

end
