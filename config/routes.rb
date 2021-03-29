Rails.application.routes.draw do
  # get 'donations/index'
  # get 'donations/show'
  # get 'donations/new'
  # get 'donations/create'
  # get 'donations/edit'
  # get 'donations/update'
  # get 'donations/delete'
  # get 'volunteer_signups/index'
  # get 'volunteer_signups/show'
  # get 'volunteer_signups/new'
  # get 'volunteer_signups/create'
  # get 'volunteer_signups/edit'
  # get 'volunteer_signups/update'
  # get 'volunteer_signups/delete'
  # get 'admins/index'
  # get 'admins/show'
  # get 'admins/new'
  # get 'admins/create'
  # get 'admins/edit'
  # get 'admins/update'
  # get 'admins/delete'
  # get 'projects/index'
  # get 'projects/show'
  # get 'projects/new'
  # get 'projects/create'
  # get 'projects/edit'
  # get 'projects/update'
  # get 'projects/delete'
  # get 'users/index'
  # get 'users/show'
  # get 'users/new'
  # get 'users/create'
  # get 'users/edit'
  # get 'users/update'
  # get 'users/delete'

  resources :users
  resources :projects
  resources :volunteer_signups
  resources :donations
  resources :admins
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
