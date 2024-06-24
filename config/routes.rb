Rails.application.routes.draw do
  # get("/", controller: "movies", action: "index" )

  # get "/" => "movies#index"
  root "movies#index"

  # Routes for the Movie resource:

  # CREATE
  post "/movies" => "movies#create", as: :movies
  get "/movies/new" => "movies#new", as: :new_movie
          
  # READ
  get "/movies" => "movies#index"
  get "/movies/:id" => "movies#show", as: :movie # will be expecting an argument for id
  
  # UPDATE
  patch "/movies/:id" => "movies#update"
  get "/movies/:id/edit" => "movies#edit", as: :edit_movie # will be expecting an argument for id
  
  # DELETE
  delete "/movies/:id" => "movies#destroy"

  #------------------------------
end
