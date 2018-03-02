Rails.application.routes.draw do
  get 'pages/home'

  get 'pages/form'

  devise_for :users, path: '', path_names: {sign_in: 'login', sign_out: 'logout', sign_up: 'register'}
  
  resources :requirements do 
    collection do 
      get 'client'
    end
  end


  root to: 'pages#home'
end

