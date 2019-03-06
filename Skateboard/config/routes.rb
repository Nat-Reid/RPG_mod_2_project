Rails.application.routes.draw do
  resources :cores
  resources :citizens
  resources :deities
  post 'deities/:id/riddle', to: 'deities#riddle', as: 'deity_riddle'
  resources :bodies
  resources :worlds
  resources :spirits
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy', as: 'logout'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
