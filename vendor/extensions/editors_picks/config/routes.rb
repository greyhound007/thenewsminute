Refinery::Core::Engine.routes.draw do

  # Frontend routes
  namespace :editors_picks do
    resources :editors_picks, :path => '', :only => [:index, :show]
  end

  # Admin routes
  namespace :editors_picks, :path => '' do
    namespace :admin, :path => Refinery::Core.backend_route do
      resources :editors_picks, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end

end
