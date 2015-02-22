Rails.application.routes.draw do
  root 'home#index'
  resources :events, only: [:new, :create]

  get '/:id', to: 'events#show', as: :show

  # facebook login
  get '/auth/facebook/callback', to: 'sessions#create'
  get '/auth/failure', to: 'sessions#failure'
  get '/logout', to: 'sessions#logout', as: :logout

end
