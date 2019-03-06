Rails.application.routes.draw do
  resources :cores
  resources :citizens
  resources :deities
  post 'deities/:id/riddle', to: 'deities#riddle', as: 'deity_riddle'
  resources :bodies
  resources :worlds
  resources :spirits
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
