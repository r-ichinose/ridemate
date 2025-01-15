Rails.application.routes.draw do
  devise_for :users
  root to: "mainboard#index"
  resources :boards, only: [:index, :new, :create, :edit, :update, :show, :destroy]
  get '/home', to: 'mainboard#index'
end
