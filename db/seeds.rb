# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create(nombreUsuario:"nombreA1",dni:11111111, email: "a1@admin.com", password:"123456",password_confirmation:"123456", admin: true)

User.create(nombreUsuario:"nombreS1",dni:22222222, email: "s1@admin.com", password:"123456",password_confirmation:"123456", super: true)
User.create(nombreUsuario:"nombreS2",dni:33333333, email: "s2@admin.com", password:"123456",password_confirmation:"123456", super: true)
User.create(nombreUsuario:"nombreS3",dni:44444444, email: "s3@admin.com", password:"123456",password_confirmation:"123456", super: true)
User.create(nombreUsuario:"nombreS4",dni:55555555, email: "s4@admin.com", password:"123456",password_confirmation:"123456", super: true)
User.create(nombreUsuario:"nombreS5",dni:66666666, email: "s5@admin.com", password:"123456",password_confirmation:"123456", super: true)

User.create(nombreUsuario:"nombre1",dni:11111111, email: "c1@admin.com", password:"123456",password_confirmation:"123456")
User.create(nombreUsuario:"nombre2",dni:11111111, email: "c2@admin.com", password:"123456",password_confirmation:"123456")
User.create(nombreUsuario:"nombre3",dni:11111111, email: "c3@admin.com", password:"123456",password_confirmation:"123456")
User.create(nombreUsuario:"nombre4",dni:11111111, email: "c4@admin.com", password:"123456",password_confirmation:"123456")
User.create(nombreUsuario:"nombre5",dni:11111111, email: "c5@admin.com", password:"123456",password_confirmation:"123456")

Vehiculo.create(marca: "honda", modelo: "civic", color:"negro", descripcion:"buen auto", patente:"AA 01 BB")
Vehiculo.create(marca: "ford", modelo: "ka", color:"gris", descripcion:"facil andar" , patente:"BB 02 CC")
Vehiculo.create(marca: "volkswagen", modelo: "suran", color:"blanco", descripcion:"auto espacioso", patente:"CC 03 DD")
Vehiculo.create(marca: "audi", modelo: "a3", color:"azul", descripcion:"confortable", patente:"DD 04 EE")
Vehiculo.create(marca: "fiat", modelo: "palio", color:"gris", descripcion:"seguro", patente:"EE 05 FF")