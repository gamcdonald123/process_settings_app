Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  resources :sites
  resources :technicians
  resources :machines
  resources :tools
  resources :settings
  resources :feedbacks, only: [:new, :create, :index, :show] do
    resources :replies, only: [:create]
  end
  get 'settings/:setting_id/versions', to: 'versions#index', as: 'setting_versions'
  get 'settings/:setting_id/versions/:id', to: 'versions#show', as: 'setting_version'
  root 'pages#home'
end
