Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api, defaults: { format: :json } do
    resource :session, only: [:create, :destroy]
    resources :users, only: [:create, :update, :show, :index] do
      resources :posts, only: [:create, :index, :show]
    end
    resources :posts, only: [:index, :create, :show, :update, :destroy] do
      resources :comments, only: [:create, :update, :destroy]
    end
    resources :comments, only: [:destroy]
    resources :likes, only: [:create, :destroy]
    resources :friendships, only: [:create, :update, :destroy]
    resources :notifications, only: [:create, :update, :show]
  end

  root "static_pages#root"
end