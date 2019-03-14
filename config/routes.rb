Rails.application.routes.draw do
  root to: 'rackets#index'
  resources :rackets
end
