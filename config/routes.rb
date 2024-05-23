Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  resources :sites
  resources :technicians
  resources :machines
  resources :tools
  resources :settings
  resources :feedbacks, only: [:new, :create, :index, :show] do
    post 'reply', on: :member
  end
  get 'settings/:setting_id/versions', to: 'versions#index', as: 'setting_versions'
  get 'settings/:setting_id/versions/:id', to: 'versions#show', as: 'setting_version'
  get 'registration_holding', to: 'pages#registration_holding'
  root 'pages#home'
end
