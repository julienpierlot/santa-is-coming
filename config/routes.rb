Rails.application.routes.draw do

  root 'welcome#index'

  resources :houses do
    resources :children
  end

end
