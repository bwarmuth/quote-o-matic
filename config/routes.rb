Quote::Application.routes.draw do
  # devise_for :users

  resources :proposals do 
    get :confirmation, on: :collection
  end

  root to: 'high_voltage/pages#show', id: 'login'
end
