Rails.application.routes.draw do

  root 'welcome#index'

  get '/books', to: 'books#index'
end
