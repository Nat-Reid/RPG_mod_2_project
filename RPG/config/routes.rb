Rails.application.routes.draw do
  resources :spirits do
    get 'inventory', to: 'spirits#inventory'
  end
  resources :worlds do
    resources :bodies do
      resources :cores
      get 'inventory', to: 'bodies#inventory'
    end
    resources :deities
    post 'deities/:id/riddle', to: 'deities#riddle', as: 'deity_riddle'
    resources :citizens
  end

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy', as: 'logout'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
