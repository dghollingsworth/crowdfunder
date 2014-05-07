Crowdfunder::Application.routes.draw do
  root "projects#index"
  resources :projects
  resources :users
  resources :sessions

  get 'login' => 'sessions#new', :as => :login
  post 'logout' => 'sessions#destroy', :as => :logout

end
