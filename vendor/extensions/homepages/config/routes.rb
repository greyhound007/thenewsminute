Refinery::Core::Engine.routes.draw do

  # Frontend routes
  namespace :homepages do
    resources :homepages, :path => '', :only => [:index, :show]
  end

  # Admin routes
  namespace :homepages, :path => '' do
    namespace :admin, :path => Refinery::Core.backend_route do
      resources :homepages, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end

end
