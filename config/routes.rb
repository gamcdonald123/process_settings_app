Rails.application.routes.draw do
  # Reveal health status on /up
  get "up" => "rails/health#show", as: :rails_health_check

  # Devise routes for users with custom controllers
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  # Define the root paths for authenticated and unauthenticated users
  authenticated :user do
    root to: 'pages#home', as: :authenticated_root
  end

  unauthenticated do
    root to: 'devise/sessions#new', as: :unauthenticated_root
  end

  # Admin namespace
  namespace :admin do
    # Add your admin routes here
    resources :dashboard, only: [:index]
  end

  # Application resources
  resources :sites
  resources :technicians
  resources :machines
  resources :tools
  resources :settings
  resources :feedbacks, only: [:new, :create, :index, :show] do
    post 'reply', on: :member
  end

  # Settings versions routes
  get 'settings/:setting_id/versions', to: 'versions#index', as: 'setting_versions'
  get 'settings/:setting_id/versions/:id', to: 'versions#show', as: 'setting_version'

  # Registration holding page
  get 'registration_holding', to: 'pages#registration_holding'

  # Root path for authenticated users
  root 'pages#home'
end
