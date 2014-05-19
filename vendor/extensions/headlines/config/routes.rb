Refinery::Core::Engine.routes.draw do

  # Frontend routes
  namespace :headlines do
    resources :headlines, :path => '', :only => [:index, :show]
  end

  # Admin routes
  namespace :headlines, :path => '' do
    namespace :admin, :path => Refinery::Core.backend_route do
      resources :headlines, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end

end
