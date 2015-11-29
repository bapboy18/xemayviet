Rails.application.routes.draw do
  get 'reviews/index'

  devise_for :users, controllers: { sessions: "users/sessions" }
  root             "static_pages#home"
  resources :users
end
