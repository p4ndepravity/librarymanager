Rails.application.routes.draw do
  root 'pages#index'

  resources :patrons

  resources :books
  
  resources :transactions
end
