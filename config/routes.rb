Rails.application.routes.draw do

  root 'pages#index'

  # get 'index' => 'pages#index'

  get '/home' => 'pages#home'

  get '/user/:id' => 'pages#profile'

  get '/explore' => 'pages#explore'

  #get "profiles" => "profiles#index"
  #get 'profiles/:id' => 'profiles#show', as: :profile

  resources :tweets do
      #resource :like
  end

  # resources :relationships

  #root 'tweets#index'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
