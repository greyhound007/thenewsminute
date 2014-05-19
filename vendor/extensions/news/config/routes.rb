Refinery::Core::Engine.routes.draw do

  # Frontend routes
  namespace :news do
    resources :news, :path => '', :only => [:index, :show]
  end

  # Admin routes
  namespace :news, :path => '' do
    namespace :admin, :path => Refinery::Core.backend_route do
      resources :news, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end

end
