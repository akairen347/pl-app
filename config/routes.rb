Rails.application.routes.draw do
  get 'posts/index'
  devise_for :users
  get 'home/top'
  get 'homes/index'
  get 'users/index' => "users#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "posts/index" => "posts#index"

  get "posts/new" => "posts#new"
  get "posts/:id" => "posts#show"

  post "posts/create" => "posts#create"

  get "/" => "home#top"


  get "posts/:id/edit" => "posts#edit"
  post "posts/:id/update" => "posts#update"


    get 'login', to: 'devise/sessions#new'
    post 'login', to: 'devise/sessions#create'
    delete 'signout', to: 'devise/sessions#destroy'
    post "signup" => "devise/sessions#signup"
    get 'logout' => 'devise/sessions#destroy'
end
