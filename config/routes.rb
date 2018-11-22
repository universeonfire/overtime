Rails.application.routes.draw do
  resources :posts
  devise_for :users
  root to: 'static#homepage'
  get 'posts/:id', to: 'posts#show', as: 'post_show' 
  
end
