Refinery::Core::Engine.routes.draw do

  # Frontend routes
  namespace :subsections do
    resources :subsections, :path => '', :only => [:index, :show]
  end

  # Admin routes
  namespace :subsections, :path => '' do
    namespace :admin, :path => Refinery::Core.backend_route do
      resources :subsections, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end

end
