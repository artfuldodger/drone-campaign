DroneCampaign::Application.routes.draw do
  resource :home
  root to: 'home#index'
  resources :representatives, only: [:index]
  resources :signatures, only: [:create]
end
