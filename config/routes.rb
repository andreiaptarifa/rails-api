Rails.application.routes.draw do
  devise_for :users
  get 'articles/index'
  get 'articles/show'
  resources :articles, only: %i[index show]
end
