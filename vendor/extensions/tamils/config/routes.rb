Refinery::Core::Engine.routes.draw do

  # Frontend routes
  namespace :tamils do
    resources :tamils, :path => '', :only => [:index, :show]
  end

  # Admin routes
  namespace :tamils, :path => '' do
    namespace :admin, :path => Refinery::Core.backend_route do
      resources :tamils, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end

end
