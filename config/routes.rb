Rails.application.routes.draw do
  devise_for :users
  root to: "mainboard#index"
  resources :boards do
    resources :board_maintenances, only: [:new, :create]
  end
end
