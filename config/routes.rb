Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :questions, only: %i[index new edit create update destroy] # the same like in this 1 stirng:
  # get '/questions', to: 'questions#index'
  # get '/questions/new', to: 'questions#new'
  # get '/questions/:id/edit', to: 'questions#edit'
  # post '/questions', to: 'questions#create'
  #get '/questions/:id/destroy%20(.:format)', to: 'questions#index'

  root 'pages#index'
end
