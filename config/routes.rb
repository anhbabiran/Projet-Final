Rails.application.routes.draw do
  root 'homes#index'
  #resources :homes
  resources :cinemalist
  resources :films
end
