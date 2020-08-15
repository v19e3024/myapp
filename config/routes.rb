Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  resources :posts do
    resource :comments
  end
  resources :users
  resources :sessions
  root 'posts#index'
end 
