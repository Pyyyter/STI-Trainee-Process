Rails.application.routes.draw do
  get 'welcome/index'
  resources :uff_campus
  resources :campus
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  root "welcome#index"

  resources :caronas do
    resources :paradas, only: [:create, :destroy]
  end


end
