# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Calander.destroy_all
Ingredient.destroy_all
Month.destroy_all
Category.destroy_all

january = Month.create!(name: 'January', season: 'Winter')
february = Month.create!(name: 'February', season: 'Winter')
march = Month.create!(name: 'March', season: 'Spring')
april = Month.create!(name: 'April', season: 'Spring')
may = Month.create!(name: 'May', season: 'Spring')
june = Month.create!(name: 'June', season: 'Summer')
july = Month.create!(name: 'July', season: 'Summer')
august = Month.create!(name: 'August', season: 'Summer')
september = Month.create!(name: 'September', season: 'Autumn')
october = Month.create!(name: 'October', season: 'Autumn')
november = Month.create!(name: 'November', season: 'Autumn')
december = Month.create!(name: 'December', season: 'Winter')

meat = Category.create!(name: 'Meat')
game = Category.create!(name: 'Game')
fish = Category.create!(name: 'Fish & Shellfish')
veg = Category.create!(name: 'Vegetables')
fruit = Category.create!(name: 'Fruits')
herbs = Category.create!(name: 'Herbs')
foraged = Category.create!(name: 'Foraged')

asparagus = Ingredient.create!(name: 'Asparagus', category_id: veg.id)
Calander.create!(ingredient_id: asparagus.id, month_id: april.id)
Calander.create!(ingredient_id: asparagus.id, month_id: may.id)

basil = Ingredient.create!(name: 'Basil', category_id: herbs.id)
Calander.create!(ingredient_id: basil.id, month_id: may.id)
Calander.create!(ingredient_id: basil.id, month_id: june.id)
Calander.create!(ingredient_id: basil.id, month_id: july.id)
Calander.create!(ingredient_id: basil.id, month_id: august.id)
Calander.create!(ingredient_id: basil.id, month_id: september.id)

sea_trout = Ingredient.create!(name: 'Sea Trout', category_id: fish.id)
Calander.create!(ingredient_id: sea_trout.id, month_id: june.id)
Calander.create!(ingredient_id: sea_trout.id, month_id: july.id)
Calander.create!(ingredient_id: sea_trout.id, month_id: august.id)

turkey = Ingredient.create!(name: 'Turkey', category_id: game.id)
Calander.create!(ingredient_id: turkey.id, month_id: december.id)

apple = Ingredient.create!(name: 'Apple', category_id: fruit.id)
Calander.create!(ingredient_id: apple.id, month_id: september.id)
Calander.create!(ingredient_id: apple.id, month_id: october.id)
Calander.create!(ingredient_id: apple.id, month_id: november.id)
Calander.create!(ingredient_id: apple.id, month_id: december.id)
Calander.create!(ingredient_id: apple.id, month_id: january.id)
