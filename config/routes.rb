Rails.application.routes.draw do

  # root "static_pages#index" # page to load ReactSPA, right now the index.html in 'Public' folder is being loaded on get '/'

  namespace :api do
    # API routes to come here, we can consider using collections, concerns and versioning this API too
    get "/redirect" => redirect("http://www.google.com") # just a sample set here /api/redirect goes to www.google.com
  end

end
