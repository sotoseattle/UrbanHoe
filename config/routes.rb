Rails.application.routes.draw do
  devise_for :users, skip: :registrations
  resources :plants

  get 'welcome/about'
  get 'welcome/hardiness_region_for'

  root 'welcome#index'
end
