Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'items#index'
  resources :items do
    resources :tranzactions, only: [:index, :new, :create]
    collection do 
      get 'search'
    end
  end
end
