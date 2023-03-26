Rails.application.routes.draw do
  resources :powers, only: [:index, :show, :update]
  resources :hero_powers, only: [:create]

  # heroes 
  get '/heroes', to: 'heros#index'
  get 'heroes/:id', to: 'heros#show'

  # powers
  # get '/powers', to: 'powers#index'
  # get 'powers/:id', to: 'powers#show'
end
