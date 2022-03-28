Rails.application.routes.draw do
  root 'pages#home'

  get 'about', to: 'pages#about'
  
  resources :houses
  get 'signup', to: 'agents#new'
  resources :agents, except: [:new]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
end
