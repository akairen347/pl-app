Rails.application.routes.draw do
  get 'home/top'
  get 'homes/index'
  get 'users/index' => "users#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "posts/index" => "posts#index"

  get "posts/new" => "posts#new"
  get "posts/:id" => "posts#show"

  post "posts/create" => "posts#create"

  get "/" => "home#top"
end
