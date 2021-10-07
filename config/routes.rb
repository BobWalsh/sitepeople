Rails.application.routes.draw do
  get 'siteworkers/index'
  get 'siteworkers/new'
  get 'site/index'
  resources :home
  resources :site
  resources :siteworker
  root to: "home#index"
end
