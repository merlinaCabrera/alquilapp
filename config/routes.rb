Rails.application.routes.draw do
  devise_for :views
  devise_for :users, :controllers => { registrations: "users/registrations" }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html


  get '/users/manejo_supervisores', to: 'users#manejo_supervisores', as: 'manejo_s'
  get '/users/agregar_supervisor', to: 'users#agregar_supervisor', as: 'agregar_s'
  get '/users/eliminar_supervisor', to: 'users#eliminar_supervisor', as: 'eliminar_s'
  get '/users/modificar_supervisor', to: 'users#modificar_supervisor', as: 'modificar_s'


  get '/billetera', to: 'home#billetera', as: 'bille'
  get '/listado_usuarios', to: 'home#listado_usuarios', as: 'listado_clientes'
  
  # Defines the root path route ("/")
  
  root to: "home#index"
end
