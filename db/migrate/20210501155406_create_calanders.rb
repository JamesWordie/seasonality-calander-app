class CreateCalanders < ActiveRecord::Migration[6.1]
  def change
    create_table :calanders do |t|
      t.references :ingredient, null: false, foreign_key: true
      t.references :month, null: false, foreign_key: true

      t.timestamps
    end
  end
end
