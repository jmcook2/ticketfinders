Rails.application.routes.draw do

  get 'static/sport'
  get 'static/terms'

  resources :categories, only: [:show, :index]
  resources :competitions, only: [:show, :index]
  resources :events, only: [:show, :index]
  resources :players, only: [:show]

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
