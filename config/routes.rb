Rails.application.routes.draw do
  resources :relationships, only: [:create, :destroy]



  post "likes/:post_id/create" => "likes#create"
  post "likes/:post_id/destroy" => "likes#destroy"

  get 'login' => 'users#login_form'
  post 'login' => 'users#login'
  post 'logout' => 'users#logout'

  get '/signup' => 'users#new'
  post 'users/create' => 'users#create'
  post 'users/:id/update' => 'users#update'
  get 'users/index' => 'users#index'
  get 'users/:id' => 'users#show'
  get 'users/:id/edit' => 'users#edit'
  get 'users/:id/likes' => 'users#likes'
  get 'users/:id/follows' => 'users#follows'
  get 'users/:id/followers' => 'users#followers'


  get 'posts/index' => 'posts#index'
  get 'posts/new' => 'posts#new'
  post 'posts/create' => 'posts#create'
  post 'posts/:id/update' => 'posts#update'
  get 'posts/:id' => 'posts#show'
  get 'posts/:id/edit' => 'posts#edit'
  post 'posts/:id/destroy' => 'posts#destroy'

  get '/' => 'home#top'
  get '/about' => 'home#about'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
