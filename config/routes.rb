Rails.application.routes.draw do

  get "users/:id/edit" => "users#edit"
  get 'posts/index'
  devise_for :users
  get 'home/top'
  get 'homes/index'
  get 'users/index' => "users#index"
  get "users/:id" => "users#show"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "posts/index" => "posts#index"

  get "posts/new" => "posts#new"
  get "posts/:id" => "posts#show"

  post "posts/create" => "posts#create"

  get "/" => "home#top"


  get "posts/:id/edit" => "posts#edit"
  post "posts/:id/update" => "posts#update"
  post "posts/:id/destrpy" => "posts#destroy"


    get 'login', to: 'devise/sessions#new'
    post 'login', to: 'devise/sessions#create'
    delete 'signout', to: 'devise/sessions#destroy'
    post "signup" => "devise/sessions#signup"
    get 'logout' => 'devise/sessions#destroy'
end
