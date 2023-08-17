Rails.application.routes.draw do
  get 'welcome/index'
  resources :uff_campus
  resources :campus
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "welcome#index"

  resources :caronas

end
