# frozen_string_literal: true

class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :title, null: false
      t.references :category, null: false, foreign_key: true
      t.string :price
      t.string :image_link
      t.string :try_on_link

      t.timestamps
    end
  end
end
