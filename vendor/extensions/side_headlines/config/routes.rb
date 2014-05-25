Refinery::Core::Engine.routes.draw do

  # Frontend routes
  namespace :side_headlines do
    resources :side_headlines, :path => '', :only => [:index, :show]
  end

  # Admin routes
  namespace :side_headlines, :path => '' do
    namespace :admin, :path => Refinery::Core.backend_route do
      resources :side_headlines, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end

end
