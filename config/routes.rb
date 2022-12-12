# Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
Rails.application.routes.draw do
  devise_for :views
  devise_for :users, controllers: { registrations: 'users/registrations' }
  resource :contacto
  resource :users

  get :send_order_mail, to: 'home#send_order_mail', as: :send_order_mail

  # supervisores
  delete 'users/:id', to: 'users#destroy', as: 'eliminar_super'
  patch '/users/:id', to: 'users#update', as: 'actualizarUsuario'
  post '/users', to: 'users#create'
  get '/users/new', to: 'users#new', as: 'crear_super'
  get '/users', to: 'users#index', as: 'listado_super'
  get '/users/:id', to: 'users#show', as: 'supervisor'
  get 'users/:id/edit', to: 'users#edit', as: 'editar_super'

  # home
  get '/billetera', to: 'home#billetera', as: 'bille'
  patch '/billetera', to: 'home#cargar_dinero', as: 'carga'
  
  get '/listado_usuarios', to: 'home#listado_usuarios', as: 'listado_clientes'
  get '/historial_uso_vehiculos', to: 'home#historial_uso_vehiculos', as: 'historial'
  post '/listado_usuarios', to: 'home#listado_usuarios'
  get '/index', to: 'home#index', as: :inicio

  get '/documentos_circular', to: 'home#documentos_circular', as: 'documentos_circular'
  get '/extender_horas', to: 'home#extender_horas', as: 'extender_horas'
  get '/desbloquear_auto', to: 'home#desbloquear_auto', as: 'desbloquear_auto'
  get '/bloquear_auto', to: 'home#bloquear_auto', as: 'bloquear_auto'

  get '/finalizar_alquiler', to: 'home#finalizar_alquiler', as: 'finalizar_alquiler' 

  # vehiculos
  delete 'vehiculos/:id', to: 'vehiculos#destroy'
  patch '/vehiculos/:id', to: 'vehiculos#update'
  post '/vehiculos', to: 'vehiculos#create'
  get '/vehiculos/new', to: 'vehiculos#new', as: :new_vehiculo
  get '/vehiculos', to: 'vehiculos#index', as: 'listado_vehiculos'
  get '/vehiculos/:id', to: 'vehiculos#show', as: :vehiculo
  get 'vehiculos/:id/edit', to: 'vehiculos#edit', as: :edit_vehiculo

  get 'alquilar/index', to: 'alquilar#index', as: 'alquiler_de_auto'
  get 'alquilar/index_extender', to: 'alquilar#index_extender'
  post '/alquilar/index', to: 'alquilar#create'
  delete 'alquilar/index', to: 'alquilar#destroy'
  patch '/listado_usuarios', to: 'home#documentos', as: 'documentos'

  get '/index', to: 'vehiculos#index_autos', as: 'index_autos'

  # preguntas frecuentes
  get '/preguntas_frecuentes', to: 'home#preguntas_frecuentes', as: 'preguntas'




  root to: 'home#index'
end
