Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/markets/:id", to: 'markets#show'

  get "/markets", to: 'markets#index'

  get "/vendors/:id", to: 'vendors#show'

  get "/markets/:id/vendors", to: 'markets#new'
  post "/markets/:id/vendors", to: 'markets#create'
end
