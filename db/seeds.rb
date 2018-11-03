# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Movie.create([
  {title: "Star War", rating: "PG", description: "Star Wars is an American epic space opera franchise, created by George Lucas and centered around a film series that began with the eponymous 1977 movie. The saga quickly became a worldwide pop culture phenomenon.", release_date: "1979-05-25 00:00:00"},
  {title: "Interstellar", rating: "G", description: "A team of explorers travel through a wormhole in space in an attempt to ensure humanity's survival.", release_date: "2014-11-06 00:00:00"},
  {title: "Venom", rating: "PG", description: "When Eddie Brock acquires the powers of a symbiote, he will have to release his alter-ego 'Venom' to save his life.", release_date: "2018-10-05 00:00:00"},
  ])