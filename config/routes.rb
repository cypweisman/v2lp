Rails.application.routes.draw do
  root to: "movies#index"
  resources :showtimes, only: [:index, :new, :create, :destroy]
  resources :auditoria, only: [:new, :create]
  resources :orders, only: [:index, :new, :create]
  resources :movies, only: [:index, :new, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
