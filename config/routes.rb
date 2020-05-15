Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get '/cocktails', to: 'cocktails#index'
  # get '/cocktail/:id', to: 'cocktails#show', as: :cocktail
  # get '/cocktails/new', to: 'cocktails#new'
  # post '/cocktails', to: 'cocktails#create'
  root to: 'cocktails#index'
  resources :cocktails, only: [:index, :show, :new, :create, :destroy] do
    resources :doses, only: [:new, :create, :destroy]
  end
end
