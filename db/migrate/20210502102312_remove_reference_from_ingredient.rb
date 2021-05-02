class RemoveReferenceFromIngredient < ActiveRecord::Migration[6.1]
  def change
    remove_reference :ingredients, :month, null: false, foreign_key: true
  end
end
