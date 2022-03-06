# == Schema Information
#
# Table name: purchase_products
#
#  id          :bigint           not null, primary key
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  product_id  :bigint           not null
#  purchase_id :bigint           not null
#
# Indexes
#
#  index_purchase_products_on_product_id   (product_id)
#  index_purchase_products_on_purchase_id  (purchase_id)
#
# Foreign Keys
#
#  fk_rails_...  (product_id => products.id)
#  fk_rails_...  (purchase_id => purchases.id)
#
class PurchaseProduct < ApplicationRecord
  belongs_to :purchase
  belongs_to :product
end
