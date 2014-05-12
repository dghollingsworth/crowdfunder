Crowdfunder::Application.routes.draw do
  root 'projects#index'


  resources :projects do 
  	resources :pledges, only: [:new, :create, :show]
    resources :comments
  end
  
  resources :users do 
  	resources :pledges, only: [:show, :destroy]
    resources :comments
  end



  resources :sessions

  get 'login' => 'sessions#new', :as => :login
  post 'logout' => 'sessions#destroy', :as => :logout

end
