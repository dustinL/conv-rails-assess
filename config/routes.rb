Rails.application.routes.draw do
  devise_for :users
  root :to => "artists#index"
  resources :sessions, only: [:create, :destroy, :new]
  resources :users, except: [:index]
  resources :artists do
    resources :shows, :except => [:index, :show]
  end

end
