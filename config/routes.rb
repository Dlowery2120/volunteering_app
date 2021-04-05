Rails.application.routes.draw do

  resources :users
  resources :projects
  resources :volunteer_signups
  resources :donations
  resources :admins
  root to: "homes#index"

    # new form for log in
    get "/login", to: "sessions#new"
    # action after we submit ^ that form
    post "/login", to: "sessions#create"  

    get "/admlogin", to: "admsessions#new"
    post "/admlogin", to: "admsessions#create"  
  
  
    # route to logout
    delete "/logout", to: "sessions#destroy"
    # form for sign up unless? 
    delete "/logout", to: "admsessions#destroy"


 
end
