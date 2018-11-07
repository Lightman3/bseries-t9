Rails.application.routes.draw do

  root 'tv_shows#index'
  resources :tv_shows do
  end

  devise_for :users

  get 'categories' => 'categories#search'

  devise_scope :user do
    get 'users/sign_in2', to: 'users/sessions#new2'
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
