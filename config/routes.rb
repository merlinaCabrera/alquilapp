Rails.application.routes.draw do
  devise_for :views
  devise_for :users, controllers: { registrations: "registrations" }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  get '/manejo_supervisores', to: 'home#manejo_supervisores', as: 'manejo_s'
  get '/agregar_supervisor', to: 'home#agregar_supervisor', as: 'agregar_s'
  get '/eliminar_supervisor', to: 'home#eliminar_supervisor', as: 'eliminar_s'
  get '/modificar_supervisor', to: 'home#modificar_supervisor', as: 'modificar_s'
  # Defines the root path route ("/")
  root "home#index"
end
