# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create(nombreUsuario:"Francisco Administrador",dni:35244938, email: "francisco@alquilapp.com", password:"123456",password_confirmation:"123456", admin: true)
User.create(nombreUsuario:"Eduardo Administrador",dni:29290428, email: "eduardo@alquilapp.com", password:"123456",password_confirmation:"123456", admin: true)

User.create(nombreUsuario:"nombreS1",dni:22222222, email: "s1@super.com", password:"123456",password_confirmation:"123456", super: true, admin:"true")
User.create(nombreUsuario:"nombreS2",dni:33333333, email: "s2@super.com", password:"123456",password_confirmation:"123456", super: true, admin:"true")
User.create(nombreUsuario:"nombreS3",dni:44444444, email: "s3@super.com", password:"123456",password_confirmation:"123456", super: true, admin:"true")
User.create(nombreUsuario:"nombreS4",dni:55555555, email: "s4@super.com", password:"123456",password_confirmation:"123456", super: true, admin:"true")
User.create(nombreUsuario:"nombreS5",dni:66666666, email: "s5@super.com", password:"123456",password_confirmation:"123456", super: true, admin:"true")


User.create(nombreUsuario:"nombreC1",dni:11111111, email: "c1@cliente.com", password:"123456",password_confirmation:"123456")
User.create(nombreUsuario:"nombreC2",dni:11111111, email: "c2@cliente.com", password:"123456",password_confirmation:"123456")
User.create(nombreUsuario:"nombreC3",dni:11111111, email: "c3@cliente.com", password:"123456",password_confirmation:"123456")
User.create(nombreUsuario:"nombreC4",dni:11111111, email: "c4@cliente.com", password:"123456",password_confirmation:"123456")
User.create(nombreUsuario:"nombreC  5",dni:11111111, email: "c5@cliente.com", password:"123456",password_confirmation:"123456")

Vehiculo.create(marca: "honda", modelo: "civic", color:"negro", descripcion:"buen auto", patente:"AA 01 BB",cercano:"5", ocupado: true)
Vehiculo.create(marca: "ford", modelo: "ka", color:"gris", descripcion:"facil andar" , patente:"BB 02 CC",cercano:"4", ocupado: true)
Vehiculo.create(marca: "volkswagen", modelo: "suran", color:"blanco", descripcion:"auto espacioso", patente:"CC 03 DD",cercano:"3", ocupado: true)
Vehiculo.create(marca: "audi", modelo: "a3", color:"azul", descripcion:"confortable", patente:"DD 04 EE",cercano:"7", ocupado: true)
Vehiculo.create(marca: "fiat", modelo: "palio", color:"gris", descripcion:"seguro", patente:"EE 05 FF",cercano:"5", ocupado: true)
Vehiculo.create(marca: "renault", modelo: "civic", color:"negro", descripcion:"buen auto", patente:"AR 01 BB",cercano:"6", ocupado: true)
Vehiculo.create(marca: "ford", modelo: "ka", color:"gris", descripcion:"facil andar" , patente:"BR 02 CC",cercano:"7", ocupado: true)
Vehiculo.create(marca: "peugeot", modelo: "suran", color:"blanco", descripcion:"auto espacioso", patente:"RC 03 DD",cercano:"11", ocupado: true)
Vehiculo.create(marca: "opel", modelo: "a3", color:"azul", descripcion:"confortable", patente:"DD 04 RE",cercano:"2", ocupado: true)
Vehiculo.create(marca: "fiat", modelo: "palio", color:"gris", descripcion:"seguro", patente:"EE 05 RF",cercano:"4", ocupado: true)
Vehiculo.create(marca: "honda", modelo: "civic", color:"negro", descripcion:"buen auto", patente:"RA 01 BB",cercano:"9", ocupado: false)
Vehiculo.create(marca: "ford", modelo: "ka", color:"gris", descripcion:"facil andar" , patente:"RB 02 YC",cercano:"8", ocupado: false)
Vehiculo.create(marca: "volkswagen", modelo: "suran", color:"blanco", descripcion:"auto espacioso", patente:"CR 03 DD",cercano:"2", ocupado: false)
Vehiculo.create(marca: "audi", modelo: "a3", color:"azul", descripcion:"confortable", patente:"DD 54 YR",cercano:"4", ocupado: false)
Vehiculo.create(marca: "fiat", modelo: "palio", color:"gris", descripcion:"seguro", patente:"ET 15 FF",cercano:"3", ocupado: false)
Vehiculo.create(marca: "honda", modelo: "civic", color:"negro", descripcion:"buen auto", patente:"HH 51 BB",cercano:"3", ocupado: false)
Vehiculo.create(marca: "ford", modelo: "ka", color:"gris", descripcion:"facil andar" , patente:"BB 52 JJ",cercano:"5", ocupado: false)
Vehiculo.create(marca: "volkswagen", modelo: "suran", color:"blanco", descripcion:"auto espacioso", patente:"GG 43 DD",cercano:"17", ocupado: false)
Vehiculo.create(marca: "audi", modelo: "a3", color:"azul", descripcion:"confortable", patente:"DD 74 EU",cercano:"16", ocupado: false)
Vehiculo.create(marca: "fiat", modelo: "palio", color:"gris", descripcion:"seguro", patente:"WW 66 FF",cercano:"2", ocupado: false)