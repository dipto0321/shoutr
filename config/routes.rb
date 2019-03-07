# frozen_string_literal: true

Rails.application.routes.draw do
  get 'searches/show'
  constraints Clearance::Constraints::SignedIn.new do
    root 'dashboards#show'
  end
  root 'homes#show'

  resources :passwords, controller: 'clearance/passwords', only: %i[create new]
  resource :session, only: [:create]

  resources :users, only: %i[create show] do
    resources :followers, only: %i[index]
    resource :password,
             controller: 'clearance/passwords',
             only: %i[create edit update]
    member do
      post 'follow' => 'followed_users#create'
      delete 'unfollow' => 'followed_users#destroy'
    end
  end

  post 'text_shouts' => 'shouts#create', defaults: { content_type: TextShout }
  post 'photo_shouts' => 'shouts#create', defaults: { content_type: PhotoShout }

  resources :shouts, only: %i[show] do
    member do
      post 'like' => 'likes#create'
      delete 'unlike' => 'likes#destroy'
    end
  end

  resources :hashtags, only: %i[show]
  resource :search, only: %i[show]

  get '/sign_in' => 'sessions#new', as: 'sign_in'
  delete '/sign_out' => 'sessions#destroy', as: 'sign_out'
  get '/sign_up' => 'users#new', as: 'sign_up'

  namespace :api, path: '', constraints: { subdomain: 'api' }, defaults: { format: :json } do
    namespace :v1 do
      resources :users
      resources :shouts
    end
  end
end
