Rails.application.routes.draw do
  get 'users/new'
  get 'sessions/new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'application#hello'
  get  '/signup',  to: 'users#new'
  
  resources :users

  resources :account_activations, only: [:edit]

  get '/login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  #####SALEKH'S ROUTES #########
  get 'posts', to: "posts#index"
  get 'posts/new', to:"posts#new"
  post 'posts', to:"posts#create"
  delete 'posts/:id', to:"posts#destroy", as: :delete_post
  get 'posts/:id', to:"posts#show", as: :post
  get 'posts/:id/edit', to:"posts#edit", as: :edit_post
  patch 'posts/:id', to:"posts#update"
  

end
