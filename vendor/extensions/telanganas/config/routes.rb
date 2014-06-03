Refinery::Core::Engine.routes.draw do

  # Frontend routes
  namespace :telanganas do
    resources :telanganas, :path => '', :only => [:index, :show]
  end

  # Admin routes
  namespace :telanganas, :path => '' do
    namespace :admin, :path => Refinery::Core.backend_route do
      resources :telanganas, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end

end
