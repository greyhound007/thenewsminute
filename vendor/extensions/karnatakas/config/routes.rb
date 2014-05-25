Refinery::Core::Engine.routes.draw do

  # Frontend routes
  namespace :karnatakas do
    resources :karnatakas, :path => '', :only => [:index, :show]
  end

  # Admin routes
  namespace :karnatakas, :path => '' do
    namespace :admin, :path => Refinery::Core.backend_route do
      resources :karnatakas, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end

end
