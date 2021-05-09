Rails.application.routes.draw do
  devise_for :users
  root to: 'ingredients#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :ingredients, only: :index
  resources :months, only: :show do
    resources :ingredients, only: :show
  end
end
