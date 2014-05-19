Refinery::Core::Engine.routes.draw do

  # Frontend routes
  namespace :latests do
    resources :latests, :path => '', :only => [:index, :show]
  end

  # Admin routes
  namespace :latests, :path => '' do
    namespace :admin, :path => Refinery::Core.backend_route do
      resources :latests, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end

end
