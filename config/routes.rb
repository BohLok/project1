Rails.application.routes.draw do
  root 'static_pages#home'
  get 'static_pages/home'

  get '/login', to: 'session#new'
  get '/signup', to: 'visitors#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
 
  resources :visitors 
end
