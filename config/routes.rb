Rails.application.routes.draw do
  resources :participants
  resources :coordinators
  resources :registries
  root to:"registries#index"
end
