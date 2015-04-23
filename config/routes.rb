Rails.application.routes.draw do
  resources :responses
  root 'responses#index'
end