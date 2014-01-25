Refinery::Core::Engine.routes.draw do

  # Frontend routes
  namespace :news_stories do
    resources :news_stories, :path => '', :only => [:index, :show]
  end

  # Admin routes
  namespace :news_stories, :path => '' do
    namespace :admin, :path => Refinery::Core.backend_route do
      resources :news_stories, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end

end
