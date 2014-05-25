Refinery::Core::Engine.routes.draw do

  # Frontend routes
  namespace :headline2s do
    resources :headline_2s, :only => [:index, :show]
  end

  # Admin routes
  namespace :headline2s, :path => '' do
    namespace :admin, :path => "#{Refinery::Core.backend_route}/headline2s" do
      resources :headline_2s, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end

end
