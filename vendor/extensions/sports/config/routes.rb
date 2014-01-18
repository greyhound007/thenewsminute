Refinery::Core::Engine.routes.draw do

  # Frontend routes
  namespace :sports do
    resources :sports, :path => '', :only => [:index, :show]
  end

  # Admin routes
  namespace :sports, :path => '' do
    namespace :admin, :path => Refinery::Core.backend_route do
      resources :sports, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end

end
