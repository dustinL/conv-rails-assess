Rails.application.routes.draw do
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  root :to => "artists#index"
  resources :sessions, only: [:create, :destroy, :new]
  resources :users, except: [:index]
  resources :artists do
    resources :shows, :except => [:index, :show]
  end

end
