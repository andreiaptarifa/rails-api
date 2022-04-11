Rails.application.routes.draw do
  get 'articles/index'
  get 'articles/show'
  resources :articles, only: %i[index show]
end
