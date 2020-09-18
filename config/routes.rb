
Rails.application.routes.draw do
  root'static_pages#home'
  
  get '/login',     to: 'static_pages#home'
  post '/login',    to: 'static_pages#create'
  delete '/logout', to: 'sessions#destroy'
  get '/signup',    to: 'users#new'
  get "music/:music_id"  => "music#show"
  post "music/:music_id" => "microposts#create"
  get "music/:music_id/edit" => "music_posts#edit"
  post "music/:music_id/edit" => "music_posts#update"
  
  resources :users 
  resources :microposts 
  get "/music_new", to: "music_posts#new"
  post "/music_new", to: "music_posts#create"
  get "/music_show", to: "music_posts#show"
  post "likes/:post_id/create" => "likes#create"
  post "likes/:post_id/destroy" => "likes#destroy"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
