# Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
Rails.application.routes.draw do
  devise_for :views
  devise_for :users, controllers: { registrations: 'users/registrations' }

  # supervisores
  delete 'users/:id', to: 'users#destroy', as: 'eliminar_super'
  patch '/users/:id', to: 'users#update'
  post '/users', to: 'users#create'
  get '/users/new', to: 'users#new', as: 'crear_super'
  get '/users', to: 'users#index', as: 'listado_super'
  get '/users/:id', to: 'users#show', as: 'supervisores'
  get 'users/:id/edit', to: 'users#edit', as: 'editar_super'

  # home
  get '/billetera', to: 'home#billetera', as: 'bille'
  get '/listado_usuarios', to: 'home#listado_usuarios', as: 'listado_clientes'
  get '/index', to: 'home#index', as: :inicio

  # vehiculos
  delete 'vehiculos/:id', to: 'vehiculos#destroy'
  patch '/vehiculos/:id', to: 'vehiculos#update'
  post '/vehiculos', to: 'vehiculos#create'
  get '/vehiculos/new', to: 'vehiculos#new', as: :new_vehiculo
  get '/vehiculos', to: 'vehiculos#index', as: 'listado_vehiculos'
  get '/vehiculos/:id', to: 'vehiculos#show', as: :vehiculo
  get 'vehiculos/:id/edit', to: 'vehiculos#edit', as: :edit_vehiculo

  # preguntas frecuentes
  get '/preguntas_frecuentes', to: 'home#preguntas_frecuentes', as: 'preguntas'

  root to: 'home#index'
end
