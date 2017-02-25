Rails.application.routes.draw do

post '/books/search'

  resources :books
  devise_for :users
get 'movies/new'
get 'movies/index'
get 'movies/:id', to: 'movies#show'
get 'movies/:id/edit', to: 'movies#edit'
patch 'movies/:id', to: 'movies#update' 
post 'movies/create'
delete 'movies/:id/destroy', to: 'movies#destroy'

root 'movies#index'
end
