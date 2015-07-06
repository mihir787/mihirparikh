Rails.application.routes.draw do
  root to: "home#show"
  resources :blogs

  get "login", to: "sessions#new"
  post "login", to: "sessions#create"
  delete 'logout', to: 'sessions#destroy'
  get "about_me", to: 'about#show'

  resources :email, only:[:create]
end
