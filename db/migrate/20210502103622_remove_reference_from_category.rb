class RemoveReferenceFromCategory < ActiveRecord::Migration[6.1]
  def change
    remove_reference :categories, :ingredient, null: false, foreign_key: true
  end
end
