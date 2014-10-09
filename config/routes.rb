Rails.application.routes.draw do
  devise_for :users, skip: :registrations

  get 'plants/plant_details/:id', to: 'plants#plant_details'
  resources :plants

  resources :contacts, only: [:new, :create, :send_mail] #for contact us page

  get 'welcome/about'
  get 'welcome/hardiness_region_for'

  root 'welcome#index'

  match '/send_mail', to: 'contact#send_mail', via: 'post'
end
