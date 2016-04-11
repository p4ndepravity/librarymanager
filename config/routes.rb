Rails.application.routes.draw do
  root 'pages#index'

  concern :borrow do
    resources :transactions
  end

  resources :patrons, concerns: :borrow

  resources :books, concerns: :borrow

  get '/transactions', to: 'transactions#index'
end
