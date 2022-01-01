# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
player_names = [
  "Lionel Messi",
  "Cristiano Ronaldo",
  "Adres Iniesta",
  "Ilkay Gundogan",
  "Jadon Sancho",
  "Ruben Dias",
  "Riyad Mahrez",
  "Leon Goretzka",
  "Karim Benzema",
  "Mohamed Salah",
  "Joshua Kimmich",
  "Jan Oblak",
  "Cristiano Ronaldo",
  "Romelu Lukaku",
  "Bruno Fernandes",
  "Erling Haaland",
  "Harry Kane",
  "Kylian Mbappe",
  "Neymar",
  "Robert Lewandowski",
  "Kevin De Bruyne",
  "Zlatan Ibrahimović",
  "Christian Pulisic",
  "Paul Pogba",
  "N'Golo Kanté",
  "Son Heung-min",
  "Luka Modric",
  "Manuel Neuer",
  "Trent Alexander-Arnold",
  "Jamie Vardy"
]
player_names.each { |player_name| Player.create(name: player_name)}
