class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :title, null: false
      t.references :category, null: false, foreign_key: true
      t.string :price

      t.timestamps
    end
  end
end
