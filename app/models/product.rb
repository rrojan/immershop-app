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

  # Fetch items
  def self.get_category_item(title, limit)
    items = where(category: Category.find_by_title(title))
    return items unless limit.present?

    items.first(limit)
  end

  def self.necklaces(limit:)
    get_category_item('Necklace', limit)
  end

  def self.sunglasses(limit:)
    get_category_item('Sunglass', limit)
  end

  def self.earrings(limit:)
    get_category_item('Earring', limit)
  end
end
