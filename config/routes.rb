Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html


  get '/manejo_supervisores', to: 'home#manejo_supervisores', as: 'manejo_s'
  # Defines the root path route ("/")
  root "home#index"
end
