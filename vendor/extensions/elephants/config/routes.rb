Refinery::Core::Engine.routes.draw do

  # Frontend routes
  namespace :elephants do
    resources :elephants, :path => '', :only => [:index, :show]
  end

  # Admin routes
  namespace :elephants, :path => '' do
    namespace :admin, :path => Refinery::Core.backend_route do
      resources :elephants, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end

end
