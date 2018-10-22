Rails.application.routes.draw do

  root 'series#index'
  resources :series
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
