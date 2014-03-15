Refinery::Core::Engine.routes.draw do

  # Frontend routes
  namespace :blogs do
    resources :blogs, :path => '', :only => [:index, :show]
  end

  # Admin routes
  namespace :blogs, :path => '' do
    namespace :admin, :path => Refinery::Core.backend_route do
      resources :blogs, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end

end
