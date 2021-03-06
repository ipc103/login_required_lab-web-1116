Rails.application.routes.draw do
  get '/', to: 'home#index', as: 'root'
  get '/login', to: 'sessions#new', as: 'login'
  post '/sessions', to: 'sessions#create', as: 'sessions'

  delete '/sessions', to: 'sessions#destroy', as: 'logout'

  get '/secrets', to: 'secrets#show', as: 'secret'

end
