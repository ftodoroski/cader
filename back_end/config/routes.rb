Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  namespace :api do 
    namespace :v1 do
      resources :owners, only: [:create, :show, :index, :destroy, :update]
      resources :properties, only: [:create, :show, :index, :destroy, :update]
      resources :apartments, only: [:create, :show, :index, :destroy, :update]
      resources :tenants, only: [:create, :show, :index, :destroy, :update]
    
      # handles the login for an existing user 
      post "/login", to: "auth#login"

      # handles the automatic login once a user is signed up/logedin
      get "/auto_login", to: "auth#auto_login"

      # accessed if a user is authorized
      get "/user_is_authed", to: "auth#user_is_authed"

      # gets the owners properties with params
      get "/owner_properties/:id", to: "properties#owner_properties"

      # get properties coordinates
      get "/properties_coordinates/:id", to: "properties#properties_coordinates"

      # get property coordinates
      get "/property_coordinates/:id", to: "properties#property_coordinates"

      # get unoccupied units 
      get "/unoccupied_units/:id", to: "apartments#unoccupied_units"

      # get unoccupied property units 
      get "/unoccupied_property_units/:id", to: "apartments#unoccupied_property_units"
    end
  end
end
