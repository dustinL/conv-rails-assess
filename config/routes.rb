Rails.application.routes.draw do
  root :to => "artists#index"
  resources :sessions, only: [:create, :destroy, :new]
  resources :users, except: [:index]
  resources :artists do
    resources :shows, :except => [:index, :show]
  end

end
