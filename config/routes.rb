Rails.application.routes.draw do
  devise_for :users
  
  root "categories#index"
  resources :categories, only: [ :create] do
    collection do
      get 'add_a_category', to: 'categories#new', as: 'new'
    end
    resources :procurements, only: [:index, :show, :create], path: 'transactions' do
      collection do
        get 'add_a_transaction', to: 'procurements#new', as: 'new'
      end
    end
  end

  get "up" => "rails/health#show", as: :rails_health_check

end
