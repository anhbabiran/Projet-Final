Rails.application.routes.draw do
  resources :user_ads

  devise_for :clients

  devise_for :staffs
  root 'films#index'
  #resources :homes
  resources :films
  resources :offers

  resources :user_laps
  resources :posts
  resources :contacts

  resources :cinemalists
  
end
