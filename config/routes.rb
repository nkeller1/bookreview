Rails.application.routes.draw do

  root 'welcome#index'

  get '/books', to: 'books#index'
  get '/books/:id', to: 'books#show'

  get '/authors', to: 'authors#index'

  get '/poems', to: 'poems#index'
end
