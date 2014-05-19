Refinery::Core::Engine.routes.draw do

  # Frontend routes
  namespace :news_sections do
    resources :news_sections, :path => '', :only => [:index, :show]
  end

  # Admin routes
  namespace :news_sections, :path => '' do
    namespace :admin, :path => Refinery::Core.backend_route do
      resources :news_sections, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end

end
