# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Alice = User.create(name: "Alice", email: "alice@example.com", password: "password", password_confirmation: "password")
Bob = User.create(name: "Bob", email: "bob@example.com", password: "password", password_confirmation: "password")
Charlie = User.create(name: "Charlie", email: "charlie@example.com", password: "password", password_confirmation: "password")
David = User.create(name: "David", email: "david@example.com", password: "password", password_confirmation: "password")
Edward = User.create(name: "Edward", email: "edward@example.com", password: "password", password_confirmation: "password")
Fred = User.create(name: "Fred", email: "fred@example.com", password: "password", password_confirmation: "password")

Cs = Admin.create(club_name: "Computer_Science", email: "cs@example.com", password: "password", password_confirmation: "password")
Bio = Admin.create(club_name: "Biology", email: "bio@example.com", password: "password", password_confirmation: "password")
Eng = Admin.create(club_name: "Engineering", email: "eng@example.com", password: "password", password_confirmation: "password")
Chem = Admin.create(club_name: "Chemistry", email: "chem@example.com", password: "password", password_confirmation: "password")
