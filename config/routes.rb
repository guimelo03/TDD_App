Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check
  root to: "welcome#index"
  resources :customers
end
