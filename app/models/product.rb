# frozen_string_literal: true

# == Schema Information
#
# Table name: products
#
#  id          :bigint           not null, primary key
#  image_link  :string
#  price       :string
#  title       :string           not null
#  try_on_link :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  category_id :bigint           not null
#
# Indexes
#
#  index_products_on_category_id  (category_id)
#
# Foreign Keys
#
#  fk_rails_...  (category_id => categories.id)
#
class Product < ApplicationRecord
  belongs_to :category

  scope :necklaces, -> { where(category: Category.find_by_title('Necklace')) }
  scope :sunglasses, -> { where(category: Category.find_by_title('Sunglass')) }
  scope :earrings, -> { where(category: Category.find_by_title('Earring')) }
end
