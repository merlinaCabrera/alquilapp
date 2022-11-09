Rails.application.routes.draw do
  devise_for :views
  devise_for :users, :controllers => { registrations: "users/registrations" }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html


  # supervisores
  get '/users/manejo_supervisores', to: 'users#manejo_supervisores', as: 'manejo_s'
  get '/users/agregar_supervisor', to: 'users#agregar_supervisor', as: 'agregar_s'
  get '/users/eliminar_supervisor', to: 'users#eliminar_supervisor', as: 'eliminar_s'
  get '/users/modificar_supervisor', to: 'users#modificar_supervisor', as: 'modificar_s'

  # home
  get '/billetera', to: 'home#billetera', as: 'bille'

  get '/listado_usuarios', to: 'home#listado_usuarios', as: 'listado_clientes'
  get '/listado_supervisores', to: 'home#listado_supervisores', as: 'listado_supervisores'
  

  # vehiculos
  delete 'vehiculos/:id', to: 'vehiculos#destroy'
  patch '/vehiculos/:id', to: 'vehiculos#update'
  post '/vehiculos' , to: 'vehiculos#create'
  get '/vehiculos/new', to: 'vehiculos#new', as: :new_vehiculo
  get '/vehiculos', to: 'vehiculos#index', as: 'listado_vehiculos'
  get '/vehiculos/:id', to: 'vehiculos#show', as: :vehiculo
  get 'vehiculos/:id/edit', to: 'vehiculos#edit', as: :edit_vehiculo

  # Defines the root path route ("/")
  
  root to: "home#index"
end
