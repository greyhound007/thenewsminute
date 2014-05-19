Refinery::Core::Engine.routes.draw do

  # Frontend routes
  namespace :ears do
    resources :ears, :path => '', :only => [:index, :show]
  end

  # Admin routes
  namespace :ears, :path => '' do
    namespace :admin, :path => Refinery::Core.backend_route do
      resources :ears, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end

end
