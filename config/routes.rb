DroneCampaign::Application.routes.draw do
  resource :home
  root to: 'home#index'
end
