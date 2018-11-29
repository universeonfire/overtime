Rails.application.routes.draw do
  resources :auditlogs, except: [:new, :edit, :destroy] do
    member do
      get :confirm
    end
  end
  namespace :admin do
      resources :users
      resources :posts
      resources :admin_users
      resources :employees

      root to: "users#index"
    end
  
  resources :posts do
    member do
      get :approve
      get :reject
    end
  end
  devise_for :users , skip: [:registration]
  root to: 'static#homepage'
  get 'posts/:id', to: 'posts#show', as: 'post_show' 
  
end
