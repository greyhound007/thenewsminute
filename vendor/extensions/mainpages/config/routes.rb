Refinery::Core::Engine.routes.draw do

  # Frontend routes
  namespace :mainpages do
    resources :mainpages, :path => '', :only => [:index, :show]
  end

  # Admin routes
  namespace :mainpages, :path => '' do
    namespace :admin, :path => Refinery::Core.backend_route do
      resources :mainpages, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end

end
