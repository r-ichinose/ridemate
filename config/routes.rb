Rails.application.routes.draw do
  devise_for :users
  get 'board/index'
  get '/home', to: 'mainboard#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: "board#index"
end
