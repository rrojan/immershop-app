class CreateCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :categories do |t|
      t.string :title
      t.integer :front_page_rank
      t.string :image_link

      t.timestamps
    end
  end
end
