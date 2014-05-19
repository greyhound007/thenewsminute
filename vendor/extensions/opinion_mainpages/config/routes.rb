Refinery::Core::Engine.routes.draw do

  # Frontend routes
  namespace :opinion_mainpages do
    resources :opinion_mainpages, :path => '', :only => [:index, :show]
  end

  # Admin routes
  namespace :opinion_mainpages, :path => '' do
    namespace :admin, :path => Refinery::Core.backend_route do
      resources :opinion_mainpages, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end

end
