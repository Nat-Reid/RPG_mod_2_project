Rails.application.routes.draw do
  resources :citizens
  resources :deities do
    post 'riddle', to: 'deities#riddle'
  end
  resources :bodies
  resources :worlds
  resources :spirits
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
