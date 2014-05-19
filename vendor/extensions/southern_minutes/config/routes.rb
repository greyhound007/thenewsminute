Refinery::Core::Engine.routes.draw do

  # Frontend routes
  namespace :southern_minutes do
    resources :southern_minutes, :path => '', :only => [:index, :show]
  end

  # Admin routes
  namespace :southern_minutes, :path => '' do
    namespace :admin, :path => Refinery::Core.backend_route do
      resources :southern_minutes, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end

end
