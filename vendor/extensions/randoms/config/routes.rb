Refinery::Core::Engine.routes.draw do

  # Frontend routes
  namespace :randoms do
    resources :randoms, :path => '', :only => [:index, :show]
  end

  # Admin routes
  namespace :randoms, :path => '' do
    namespace :admin, :path => Refinery::Core.backend_route do
      resources :randoms, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end

end
