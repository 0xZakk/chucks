Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :responses
  resources :quotes
  root 'responses#index'
end