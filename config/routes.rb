Rails.application.routes.draw do
  resources :user_laps
  devise_for :staffs
  root 'homes#index'
  #resources :homes
  resources :films
  
end
