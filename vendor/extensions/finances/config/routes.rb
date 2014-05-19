Refinery::Core::Engine.routes.draw do

  # Frontend routes
  namespace :finances do
    resources :finances, :path => '', :only => [:index, :show]
  end

  # Admin routes
  namespace :finances, :path => '' do
    namespace :admin, :path => Refinery::Core.backend_route do
      resources :finances, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end

end
