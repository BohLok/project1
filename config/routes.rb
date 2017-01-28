Rails.application.routes.draw do
  root 'static_pages#home'
  get 'static_pages/home'

  get '/login', to: 'session#new'
  get '/signup', to: 'visitors#new'
  
  post '/login', to: 'session#create'
  
  
 
  resources :visitors 
end
