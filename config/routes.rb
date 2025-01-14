Rails.application.routes.draw do
  devise_for :users

  # ホームページのルート
  root to: "mainboard#index"

  # ボード管理
  resources :boards, only: [:index, :new, :create, :edit, :update, :show, :destroy]

  # その他のルート
  get '/home', to: 'mainboard#index'
end
