Rails.application.routes.draw do
  resources :signups, only: [:create]
  resources :activities, only: [:index, :destroy]
  resources :campers, only: [:index, :show, :create]

  # get "/campers/:id", to: "campers#show"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
