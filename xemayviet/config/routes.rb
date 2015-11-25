Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: "users/sessions" }
  root             "static_pages#home"
  # get "about"   => "static_pages#about"
  # get "signup"  => "users#new"
  resources :users
end
