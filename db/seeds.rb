# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# Recipe.destroy_all
Recipe.create(name: "Spaghetti Bolognese", description: "A classic Italian dish made with ground beef, tomato sauce, and spaghetti.", rating: 8.0)
Recipe.create(name: "Pizza", description: "A classic Italian dish made with cheese, tomato sauce and dough.", rating: 9.0)
Recipe.create(name: "Carbonarra", description: "A classic Italian dish made with pancetta, eggs, parmesan and spagetti.", rating: 7.9)
Recipe.create(name: "Lasagne", description: "A classic Italian dish made with beef, cheese, tomato sauce, lasagna sheets.", rating: 9.0)
