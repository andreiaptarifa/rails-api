Rails.application.routes.draw do
  devise_for :users
  get 'articles/index'
  get 'articles/show'
  resources :articles, only: %i[index show]

  # Routes for Google authentication
  get 'auth/:provider/callback', to: 'sessions#googleAuth'
  get 'auth/failure', to: redirect('/')
end
