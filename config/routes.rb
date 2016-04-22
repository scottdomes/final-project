Rails.application.routes.draw do

  root "static_pages#index" # page to load ReactSPA, right now the index.html in 'Public' folder is being loaded on get '/'

  namespace :api, defaults: { format: :json } do
      # We are going to list our resources here
      #, :only => [:show, :create, :update]
      resources :users, defaults: { format: :json } do
        resources :events
      end
      resources :events
      resources :votes
  end

end
