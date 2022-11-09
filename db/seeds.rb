# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create(email: "a1@admin.com", password:"123456",password_confirmation:"123456", admin: true)

User.create(email: "s1@admin.com", password:"123456",password_confirmation:"123456", super: true)
User.create(email: "s2@admin.com", password:"123456",password_confirmation:"123456", super: true)
User.create(email: "s3@admin.com", password:"123456",password_confirmation:"123456", super: true)
User.create(email: "s4@admin.com", password:"123456",password_confirmation:"123456", super: true)
User.create(email: "s5@admin.com", password:"123456",password_confirmation:"123456", super: true)

User.create(email: "c1@admin.com", password:"123456",password_confirmation:"123456")
User.create(email: "c2@admin.com", password:"123456",password_confirmation:"123456")
User.create(email: "c3@admin.com", password:"123456",password_confirmation:"123456")
User.create(email: "c4@admin.com", password:"123456",password_confirmation:"123456")
User.create(email: "c5@admin.com", password:"123456",password_confirmation:"123456")