Crowdfunder::Application.routes.draw do
  get "gifts/create"
  root "projects#index"

  resources :projects
end
