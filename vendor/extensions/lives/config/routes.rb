Refinery::Core::Engine.routes.draw do

  # Frontend routes
  namespace :lives do
    resources :lives, :path => '', :only => [:index, :show]
  end

  # Admin routes
  namespace :lives, :path => '' do
    namespace :admin, :path => Refinery::Core.backend_route do
      resources :lives, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end

end
