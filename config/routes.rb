Quote::Application.routes.draw do
  # devise_for :users

  # resources :quotes
  
  root to: 'high_voltage/pages#show', id: 'login'
end
