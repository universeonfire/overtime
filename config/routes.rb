Rails.application.routes.draw do
  resources :auditlogs
  namespace :admin do
      resources :users
      resources :posts
      resources :admin_users

      root to: "users#index"
    end
  
  resources :posts do
    member do
      get :approve
    end
  end
  devise_for :users , skip: [:registration]
  root to: 'static#homepage'
  get 'posts/:id', to: 'posts#show', as: 'post_show' 
  
end
