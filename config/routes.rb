Rails.application.routes.draw do

  root 'welcome#index'

  resources :houses do
    resources :children, only: [:new, :create, :index]
  end

  resources :children, only: [:show] do
    resources :lists
  end

  resources :gift_infos

  resources :gifts

end
