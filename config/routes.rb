Crowdfunder::Application.routes.draw do
  
  resources :projects do 
  	resources :pledges, only: [:new, :create, :show]
  end
  
  resources :users do 
  	resources :pledges, only: [:show, :destroy]
  end


  resources :sessions

  get 'login' => 'sessions#new', :as => :login
  post 'logout' => 'sessions#destroy', :as => :logout

end
