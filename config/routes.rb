Rails.application.routes.draw do

  devise_for :users, skip: :registrations

  root 'welcome#index'

  get 'welcome/about'
  get 'welcome/hardiness_region_for'
end
