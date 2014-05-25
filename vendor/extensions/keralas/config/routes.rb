Refinery::Core::Engine.routes.draw do

  # Frontend routes
  namespace :keralas do
    resources :keralas, :path => '', :only => [:index, :show]
  end

  # Admin routes
  namespace :keralas, :path => '' do
    namespace :admin, :path => Refinery::Core.backend_route do
      resources :keralas, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end

end
