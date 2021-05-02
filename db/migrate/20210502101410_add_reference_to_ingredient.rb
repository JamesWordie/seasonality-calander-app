class AddReferenceToIngredient < ActiveRecord::Migration[6.1]
  def change
    add_reference :ingredients, :month, null: false, foreign_key: true
  end
end
