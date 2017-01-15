Rails.application.routes.draw do
  devise_for :staffs
  root 'films#index'
  #resources :homes
  resources :films
  resources :offers

  resources :user_laps
  resources :posts
  resources :contacts
  
  resources :a
end
