Refinery::Core::Engine.routes.draw do

  # Frontend routes
  namespace :politics do
    resources :politics, :path => '', :only => [:index, :show]
  end

  # Admin routes
  namespace :politics, :path => '' do
    namespace :admin, :path => Refinery::Core.backend_route do
      resources :politics, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end

end
