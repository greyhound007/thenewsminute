Refinery::Core::Engine.routes.draw do

  # Frontend routes
  namespace :technologies do
    resources :technologies, :path => '', :only => [:index, :show]
  end

  # Admin routes
  namespace :technologies, :path => '' do
    namespace :admin, :path => Refinery::Core.backend_route do
      resources :technologies, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end

end
