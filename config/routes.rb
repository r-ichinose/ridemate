Rails.application.routes.draw do
  devise_for :users
  root to: "mainboard#index"
  resources :boards, only: [:index, :new, :create, :edit]
  resources :board_maintenances, only: [:new, :create]
end
