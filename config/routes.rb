Rails.application.routes.draw do

  root 'welcome#index'

  resources :houses

end
