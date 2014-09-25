Rails.application.routes.draw do
  root :to => "artists#index"
  resources :users
  resources :artists do
    resources :shows, :except => [:index, :show]
  end


end
