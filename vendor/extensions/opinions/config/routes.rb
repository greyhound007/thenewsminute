Refinery::Core::Engine.routes.draw do

  # Frontend routes
  namespace :opinions do
    resources :opinions, :path => '', :only => [:index, :show]
  end

  # Admin routes
  namespace :opinions, :path => '' do
    namespace :admin, :path => Refinery::Core.backend_route do
      resources :opinions, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end

end
