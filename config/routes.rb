Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  ## COCKTAIL ROUTES
  ## A user can see the list of cocktails
  # get '/cocktails', to: 'cocktails#index'

  ## A user can see the details of a given cocktail, with the dose needed for each ingredient
  # get '/cocktails/:id', to: 'cocktails#show'

  ## A user can create a new cocktail
  # get '/cocktails/new', to: 'cocktails#new'
  # post '/cocktails', to: 'cocktails#create'

  resources :cocktails, only: [:index, :show, :new, :create] do
    resources :doses, only: [:new, :create]
  end

  resources :doses, only: [:destroy]
end
