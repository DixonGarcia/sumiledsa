Rails.application.routes.draw do
  devise_for :admins, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'pages/index'
  resources :products, only: [:index, :show]
  resources :contacts, only: [:new,:create]

  root 'pages#under_construction'
end
