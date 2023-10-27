Rails.application.routes.draw do
  root to: 'home#index'

  resources :recipes, only: [:show, :create, :new, :edit, :update] do
    patch :publish, on: :member
  end
  resources :recipe_types, only: [:create, :new]
  resources :cuisines, only: [:create, :new]
end
