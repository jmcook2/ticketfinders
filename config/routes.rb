Rails.application.routes.draw do

  resources :categories, only: [:show, :index]
  resources :competitions, only: [:show, :index]
  resources :events, only: [:show]

  # get 'venues/index'
  # get 'tickets/index'
  # get 'players/index'
  # get 'events/index'
  # get 'welcome/index'

  root 'home#index'

  namespace :admin do
    root 'welcome#index'
    resources :categories
    resources :competitions
    resources :events
    resources :players
    resources :tickets
    resources :venues
  end

end
