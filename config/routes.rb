Rails.application.routes.draw do
  root 'pages#home'
  get '/about', to: 'pages#about'

  put '/tasks/:id', to: 'tasks#complete', as: 'complete_task'
  resources :tasks, only: %i[ index create destroy ]

  resources :users, only: %i[ new create ]

  get 'login', to: 'sessions#new', as: :login
  post 'login/user', to: 'sessions#create'

  delete 'logout', to: 'sessions#destroy', as: :logout
end
