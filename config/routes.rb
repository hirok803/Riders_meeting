Rails.application.routes.draw do
  devise_for :users, module: :users
  get 'home/index'
  get 'home/root'
  root to: "home#root"
  resources :comments
  resources :touring_routes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
