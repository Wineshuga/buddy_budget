Rails.application.routes.draw do
  devise_for :users
  
  root "home#index"
  resources :categories, only: [:index, :new, :create] do
    resources :procurements, only: [:index, :show, :new, :create]
  end

  get "up" => "rails/health#show", as: :rails_health_check

end
