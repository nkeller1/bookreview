Rails.application.routes.draw do

  root 'welcome#index'

  get '/books', to: 'books#index'
  get '/books/new', to: 'books#new'
  post '/books', to: 'books#create'
  get '/books/:id', to: 'books#show'

  get '/authors', to: 'authors#index'
  get '/authors/:id', to: 'authors#show'

  get '/poems', to: 'poems#index'

  get 'users/:id', to: 'users#show'
end
