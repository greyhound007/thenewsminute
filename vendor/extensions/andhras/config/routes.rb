Refinery::Core::Engine.routes.draw do

  # Frontend routes
  namespace :andhras do
    resources :andhras, :path => '', :only => [:index, :show]
  end

  # Admin routes
  namespace :andhras, :path => '' do
    namespace :admin, :path => Refinery::Core.backend_route do
      resources :andhras, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end

end
