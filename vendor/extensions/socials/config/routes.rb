Refinery::Core::Engine.routes.draw do

  # Frontend routes
  namespace :socials do
    resources :socials, :path => '', :only => [:index, :show]
  end

  # Admin routes
  namespace :socials, :path => '' do
    namespace :admin, :path => Refinery::Core.backend_route do
      resources :socials, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end

end
