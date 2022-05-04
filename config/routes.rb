Rails.application.routes.draw do
  root "widgets#index"
  resources :widgets

  get "/turbo_widgets", to: 'widgets#turbo', as: "turbo_widgets"
  get "/manual_infinite_scroll", to: 'widgets#manual_scroll', as: "manual_infinite_scroll"
  get "/infinite_scroll", to: 'widgets#infinite_scroll', as: "infinite_scroll"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
