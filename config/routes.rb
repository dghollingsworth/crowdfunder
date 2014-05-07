Crowdfunder::Application.routes.draw do
  root "projects#index"
  resources :projects
  resources :users
  resources :sessions

  

end
