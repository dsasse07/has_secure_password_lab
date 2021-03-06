Rails.application.routes.draw do
  get '/', to: 'welcome#home'
  
  get '/login', to: 'sessions#new', as: 'login'
  post '/login', to: 'sessions#create'
  post '/logout', to: 'sessions#destroy', as: 'logout'

  get '/users/new', to: 'users#new', as: 'new_user'
  post '/users', to: 'users#create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
