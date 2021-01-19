Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :restaurants  do

    # needs resturant IDS
    resources :reviews, only: [ :new, :create ]
  end
  # outside of Restaurants
  resources :reviews, only: [ :destroy, :show, :update ]
end
