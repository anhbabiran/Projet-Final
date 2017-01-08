Rails.application.routes.draw do
  root 'homes#index'
  #resources :homes
  resources :films
  resources :offers
end
