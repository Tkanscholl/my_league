Rails.application.routes.draw do
  resources :players
  resources :leagues
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  
  get 'leagues', to: 'leagues#index'
  
end
