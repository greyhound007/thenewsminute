Refinery::Core::Engine.routes.draw do

  # Frontend routes
  namespace :entertainments do
    resources :entertainments, :path => '', :only => [:index, :show]
  end

  # Admin routes
  namespace :entertainments, :path => '' do
    namespace :admin, :path => Refinery::Core.backend_route do
      resources :entertainments, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end

end
