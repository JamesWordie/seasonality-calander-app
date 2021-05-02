class AddReferenceTo0Ingredient < ActiveRecord::Migration[6.1]
  def change
    add_reference :ingredients, :category, null: false, foreign_key: true
  end
end
