Refinery::Core::Engine.routes.draw do

  # Frontend routes
  namespace :opinion_corners do
    resources :opinion_corners, :path => '', :only => [:index, :show]
  end

  # Admin routes
  namespace :opinion_corners, :path => '' do
    namespace :admin, :path => Refinery::Core.backend_route do
      resources :opinion_corners, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end

end
