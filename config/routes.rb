Rails.application.routes.draw do
  root                  'posts#index'
  get    '/post',   to: 'posts#new', as: 'new_post'
  post   '/post',   to: 'posts#create', as: 'posts'
  get    '/about',  to: 'static_pages#about'
  get    '/login',  to: 'sessions#new'
  post   '/login',  to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
end
