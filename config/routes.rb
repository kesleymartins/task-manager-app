Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'pages#home'
  get '/about', to: 'pages#about'

  put '/tasks/:id', to: 'tasks#complete', as: 'complete_task'
  resources :tasks, only: %i[ index create destroy ]
end
