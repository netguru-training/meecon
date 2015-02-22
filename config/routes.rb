Rails.application.routes.draw do
  root 'home#index'
  resources :events, only: [:new, :create]

  # facebook login
  get '/auth/facebook/callback', to: 'sessions#create'
  get '/auth/failure', to: 'sessions#failure'
  get '/logout', to: 'sessions#logout', as: :logout

end
