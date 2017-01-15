Rails.application.routes.draw do
  devise_for :clients
  devise_for :staffs
  root 'homes#index'
  #resources :homes
  resources :films
  resources :offers
end
