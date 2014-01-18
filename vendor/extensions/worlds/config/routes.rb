Refinery::Core::Engine.routes.draw do

  # Frontend routes
  namespace :worlds do
    resources :worlds, :path => '', :only => [:index, :show]
  end

  # Admin routes
  namespace :worlds, :path => '' do
    namespace :admin, :path => Refinery::Core.backend_route do
      resources :worlds, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end

end
