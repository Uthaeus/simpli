Rails.application.routes.draw do
  get 'pages/home'

  get 'pages/form'

  devise_for :users
  resources :requirements
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'pages#home'
end
