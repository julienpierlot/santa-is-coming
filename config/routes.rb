require "sidekiq/web"

Rails.application.routes.draw do

  mount Sidekiq::Web => '/sidekiq'

  root 'welcome#index'

  resources :houses do
    resources :children, only: [:new, :create, :index]
  end

  resources :children, only: [:show] do
    match "list", to: "lists#show", via: :get, as: :list
    match "list", to: "lists#create", via: :post, as: :create_list
    get "list/new", to: "lists#new", as: :new_list
    put "list", to: "lists#edit", as: :update_list
  end

  resources :gift_infos

  resources :gifts

end
