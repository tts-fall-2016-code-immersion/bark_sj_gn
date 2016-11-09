Rails.application.routes.draw do

  devise_for :users

  get "profiles/:id" => "profiles#show", as: :profile

  get "profiles" => "profiles#index"

  resources :tweets do
    resource :like
  end

  resources :relationships

  root "tweets#index"
end
