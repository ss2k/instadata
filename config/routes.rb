Instadata::Application.routes.draw do

  get 'sessions', to: 'sessions#new'
  get 'sessions/callback', to: 'sessions#callback'
  resources :data, only: :index

  root :to => "home#index"
end
