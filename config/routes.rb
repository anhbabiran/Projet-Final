Rails.application.routes.draw do
  root 'homes#index'
  #resources :homes
  resources :cinemalists
  resources :films
end
