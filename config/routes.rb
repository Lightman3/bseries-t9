Rails.application.routes.draw do

  root 'tv_shows#index'
  resources :tv_shows
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
