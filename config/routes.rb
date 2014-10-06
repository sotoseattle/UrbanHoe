Rails.application.routes.draw do

  resources :plants

  devise_for :users, skip: :registrations

  root 'welcome#index'

  get 'welcome/about'
end
