Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check
  get :root, to: "application#welcome"
  get :about, to: "application#about"
  get :contact, to: "application#contact"

  post 'subscribe', to: 'subscriptions#create', as: 'subscribe'
  
  resources :junkyards, only: [:index]
  resources :thoughts, only: [:index]
end
