Rails.application.routes.draw do
  resources :homes
  root to: "home#index"
end
