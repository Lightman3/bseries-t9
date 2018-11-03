Rails.application.routes.draw do

  root 'tv_shows#index'
  resources :tv_shows

  devise_for :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
