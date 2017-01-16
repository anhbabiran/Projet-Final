Rails.application.routes.draw do
  resources :user_ads
  #get 'admin/index'

  #get 'admin_sessions/new'

  #get 'admin_sessions/create'

  #get 'admin_sessions/destroy'

  resources :user_admins
  devise_for :staffs
  root 'films#index'
  #resources :homes
  resources :films
  resources :offers

  resources :user_laps
  resources :posts
  resources :contacts
  resources :cinemalists
  #get 'admin' => 'admin#index'

    #controller :admin_sessions do
        #get 'login' => :new
        #post 'login' => :create
      #  delete 'logout' => :destroy
    end
