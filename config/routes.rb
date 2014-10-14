Rails.application.routes.draw do
  devise_for :users, skip: :registrations

  get 'plants/plant_details/:id', to: 'plants#plant_details'
  resources :plants

  resource :image, only: :new

  get 'welcome/about'
  get 'welcome/hardiness_region_for'

  root 'welcome#index'
end
